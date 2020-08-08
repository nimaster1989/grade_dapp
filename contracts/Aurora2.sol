pragma solidity ^0.5.0;

contract Aurora2{
    address public  administrator;
    uint public gradeCount = 0;
    mapping (uint => Grade) public grades;

    struct Grade{
        uint id;
        address professor_addr;
        string course_id;
        string student_name;
        uint release_time;
        string student_number;
        uint assignment_score;
        uint project_score;
        uint exam_score;
        string _final_grade;
    }

    event GradeCreated(
        uint id,
        address professor_addr,
        string course_id,
        string stdent_name,
        uint release_time,
        string student_number,
        uint assignment_score,
        uint project_score,
        uint exam_score,
        string _final_grade
    );
    //administrator,which should be professor, or other grader
    constructor () public {
        administrator = msg.sender;
        createGrade("comp3010","PRO","7777777",100,100,100);
    }

    function createGrade(string memory _course_id,string memory _student_name,string memory _student_number,uint _assignment_score,uint _project_score,uint _exam_score) public {
        //check if current user is administrator
        require(administrator == msg.sender);
        //increase id
        gradeCount++;
        address _professor_addr = msg.sender;

        uint _final_score = _assignment_score * 2/5 + _project_score * 1/4 + _exam_score * 7/20;
        string memory _final_grade;
        if(_final_score >= 90){
            _final_grade = "A+";
        }else if(_final_score >= 80){
            _final_grade = "A";
        }else if(_final_score >= 75){
            _final_grade = "B+";
        }else if(_final_score >= 70){
            _final_grade = "B";
        }else if(_final_score >= 65){
            _final_grade = "C+";
        }else if(_final_score >= 60){
            _final_grade = "C";
        }else if(_final_score >= 50){
            _final_grade = "D";
        }else{
            _final_grade = "F";
        }
        grades[gradeCount] = Grade(gradeCount,_professor_addr,_course_id,_student_name,block.number,_student_number,_assignment_score,_project_score,_exam_score,_final_grade);
        //trigger an event
        emit GradeCreated(gradeCount,_professor_addr,_course_id,_student_name, block.number,_student_number, _assignment_score, _project_score,_exam_score,_final_grade);

    }

}
