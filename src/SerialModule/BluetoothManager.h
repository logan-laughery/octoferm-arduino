#ifndef BLUETOOTHMANAGER_H
#define BLUETOOTHMANAGER_H

#include "Arduino.h"

class BluetoothManager
{
  private:
    BluetoothManager();
    BluetoothManager(BluetoothManager const& copy); // Not implemented
    BluetoothManager& operator=(BluetoothManager const& copy); // Not implemented
  public:
    static BluetoothManager& GetInstance()
    {
      static BluetoothManager instance;
      return instance;
    }
    void Write(char output[]);
    void Write(char output);
    void Write(String output);
    char Read();
    bool Available();
};

#endif
