---
title: Setting up a VM for crypto transactions
tags: VM, security
---

This is a tutorial on how to set up an encrypted VM for managing cryptocurrency.  

**Do not use this VM for anything other than doing cryptocurrency transactions and key management.**

- [ ] Make sure your computer has virtualization enabled in the BIOS
    - Reboot your computer and enter the BIOS.  This usually is done by pushing `del` while your computer boots up, but varies across hardware
    - Find the virtualization option and make sure it is enabled
    - Save and reboot
- [ ] Download the following software: , [VirtualBox](https://www.veracrypt.fr/en/Home.html), [Lubuntu](https://www.veracrypt.fr/en/Home.html)

## Installing and using Veracrypt

### Install
- [ ] Download [Veracrypt](https://www.veracrypt.fr/en/Home.html), the PGP public key, and the signature file (Check for SSL cert in your browser!)
- [ ] Follow the instructions [here](https://www.veracrypt.fr/en/Digital%20Signatures.html) to verify the file integrity. 
- [ ] Install using default options
- [ ] 
### Create Encrypted Drive
- [ ] Launch VeraCrypt and select "Create Volume" 
- [ ] Select "Create an encrypted file container" 
- [ ] Select "Standard VeraCrypt" volume
- [ ] Click "Select File..."
- [ ] Navigate to where you want to save your encrypted volume, give it a name, and then hit “Save”
- [ ] After clicking “Next”, you should now be at the Encryption Options screen. Leave these options at their default settings (AES and SHA-512) and hit “Next”
- [ ] Now you need to set the size of the container you want to create. I’m going to use 20gb’s to give myself lots of room to grow, but you can adjust this to your needs. Keep in mind that if you install several full node wallets (such as Bitcoin Core, Dash Core, Zcash, etc), they will eat up your space fairly quickly with their full blockchain downloads so you may need to create a larger volume than 20gb’s.
- [ ] Set your password. Make sure it’s over 20 characters and includes upper case, lower case, numbers, and symbols.  Use LastPass for this.
- [ ] Once you’ve set and recorded your password, hit “Next” and choose “Yes” for Large Files
- [ ] You should now be at the “Volume Format” window. This screen generates the encryption key for securing your container. Move your mouse around within the window until the meter reaches the end. Once it’s there, click on “Format”. Wait a few minutes for the volume to be formatted
- [ ] After formatting is complete, hit “Exit”. You have now finished creating your encrypted volume

### Mount Drive
- [ ] In the VeraCrypt main window, click on “Select File” and open the file you created in the previous step
- [ ] Click on an empty drive letter and then click on “Mount”. Remember what drive letter you selected as you’ll need to use the same one every time you re-mount your encrypted volume for the virtual machine to work
- [ ] Put in your password and click OK
- [ ] The file you created will now show up as drive on your computer. Anything you put into this volume will be fully encrypted, and when dismounted, will not be reachable by hackers, government, etc