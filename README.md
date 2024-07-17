# MIUI-Booster
MIUI-Booster - Magisk module for MIUI users, which improves various aspects of the system

---

## What the module does?
* Removes a bunch of system applications
  > Really noticeable increase in system smoothness and speed!
* Disables MIUI system updates
  > Now you'll never see the message that an update is available!
* Disables different types of system logging
* Disables CellBroadCast service
* Disables MIUI Launcher functionality limitations
  > Features: force saving app to RAM, dual screen will be unlocked!
* Makes infinite cloud storage in google photos
  > This probably doesn't work now...
* Disables system boot animation

---

## How to customize the list of catologs to be deleted
1. Open the file [update-binary](META-INF/com/google/android/update-binary) and on line 11 you will see the ```REPLACE``` variable
2. You will see a list of directories that will be cleared after the module is installed
3. You can edit ```REPLACE``` variable:
   * For first example, I want to keep the **MIUI Weather** app, so I delete line 95 and I get:
      ```shell
      REPLACE="
      ...
      /system/priv-app/GameCenterGlobal
      /system/priv-app/MiuiBrowserGlobal
      /system/priv-app/YellowPage
      ...
      ```
   * For second example, I want to delete an app that is located at **/system/app/TrashAppName**, then I add its **PATH** to a variable and I get:
      ```shell
      REPLACE="
      ...
      /system/vendor/app/SoterService
      /system/vendor/app/SensorTestTool

      /system/app/TrashAppName
      "
      ```

      > Don't forget to move the quotation mark to a new line after adding the new **PATH**!
