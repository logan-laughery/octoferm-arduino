#ifndef SETHEATERCOMMAND_H
#define SETHEATERCOMMAND_H

#include "CommandAbstract.h"
#include "Arduino.h"

class SetHeaterCommand : public CommandAbstract
{
  public:
    SetHeaterCommand(String argument);
    void UpdateSettings(void);
  private:
    void ParseArgument(String argument);
    int desiredHeating;
};

#endif
