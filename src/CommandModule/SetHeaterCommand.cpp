
#include "SetHeaterCommand.h"
#include "Arduino.h"
#include "Settings.h"
#include "SerialManager.h"
#include "BluetoothManager.h"

SetHeaterCommand::SetHeaterCommand(String argument): CommandAbstract()
{
  this->ParseArgument(argument);
}

void SetHeaterCommand::UpdateSettings()
{
  Settings& settings = Settings::GetInstance();
  settings.Heating = this->desiredHeating == 1;

  SerialManager& serialManager = SerialManager::GetInstance();
  serialManager.Debug(String(String("Command: SetHeater - ") + String(this->desiredHeating)));

  BluetoothManager& bluetoothManager = BluetoothManager::GetInstance();
  bluetoothManager.Write(String("{h:") + String(this->desiredHeating) + String("}"));
}

void SetHeaterCommand::ParseArgument(String argument)
{
  this->desiredHeating = argument.toInt();
}
