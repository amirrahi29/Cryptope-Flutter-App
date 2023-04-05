import 'package:cryptope/model/ProjectModel.dart';
import 'package:cryptope/respositories/ProjectRepository.dart';
import 'package:get/get.dart';

class ProjectViewModel extends GetxController{

  //coins
  final projectModel = ProjectModel().obs;
  final projectList = <ProjectList>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllProjects();
  }
  Future<void> getAllProjects()async{
    projectList.clear();
    var response = await ProjectRepository.getProjects();
    if(response['status'] == 'true'){
      for(var u in response['responseData']['projectList']){
        projectList.add(ProjectList(
          id: u["id"],
          projectName: u["project_name"],
          projectDetails: u["project_details"],
          projectPromoted: projectPromotedValues.map[u["project_promoted"]]!,
          image: u["image"],
        ));
      }
    }
  }

}