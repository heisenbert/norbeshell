#include <iostream>
#include <string.h>

void handle_command(std::string* command);
std::string s_title="#norbeshell_> ";


int main(){
	//yep its a dummy shell, stupid as brat
	std::string command;
	while(command !="exit"){
		std::cout<<s_title;
		std::cin >> command;
		handle_command(&command);
	}
	return 0;

}

void handle_command(std::string* command){
	//char * argv[1];
	//just a few things to mess with, uncomment if that's too much
	if(*command == "date")
	{
		std::cout<<"date? you get not dates!"<<std::endl;
	}
	else if(*command == "vim")
	{
		std::cout<<"no emacs? vim rocks either way"<<std::endl;
	}
	else if(*command == "exit")
	{
		return;
	}
	else
	{
		std::cout<<"Command Unknown"<<std::endl;
	}
}


//TODO term colors iwan einfuehren

