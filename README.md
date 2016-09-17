ISOTOPE
===
ISOTOPE is an open-source Science Olympiad tournament management web-application created by Science Olympiad at MIT.

## Goals

#### For coaches:
* Tournament registration
* Team management
* Time block signup

#### For Event Supervisors
* Event score entry

#### For Tournament Organizers
* Extensive score counseling features
* Online appeals system
* Automatic generation of awards slides, or exporting of awards results
* Flexible settings for all other aspects of a tournament
* Fault tolerance: Continuous backup to google sheets/github in case of internet or server failure.

#### For Students
* A viewable tournament schedule with locations based on your registered events and time blocks
* Ability to track performance across one or multiple tournaments

#### For Spectators
* The best results pages you've ever seen

## How it works
ISOTOPE is powered by Ruby on Rails. A single running instance of ISOTOPE will be able to host independent tournament instances, each on a custom subdomain.

## Developer setup
### Prerequisites
- [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [vagrant-gatling-rsync](https://github.com/smerrill/vagrant-gatling-rsync) (optional but recommended)
	- `vagrant plugin install vagrant-gatling-rsync` 
- [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) (optional but recommended)
	- `vagrant plugin install vagrant-rsync-back`
- Ansible 2.x (requires Python 2.x)
	- `pip install ansible`

### Setup
1. Clone this repository
2. `cd` into this repository
3. Initialize the git submodules: `git submodule init` and `git submodule update`
3. run `vagrant up`
	- If this fails or gets interrupted somehow, you may have to follow this up with a `vagrant provision`, which will run the ansible scripts. 

### Starting the server
1. SSH into the vagrant virtual machine using `vagrant ssh`
2. You should be greeted with instructions for using an `iso` command, which should help to get started.
3. Run `iso home` and then `iso start` to start the development server

### Syncing the project folder
By default, `vagrant up` will start syncing the project folder to the `/srv/judicial` folder on the VM using `vagrant-gatling-rsync` after booting the VM.

- If you aren't using `vagrant-gatling-rsync`, run `vagrant rsync-auto` in a separate command line session to sync the folder normally
- If you cancelled out of the sync, run `vagrant gatling-rsync-auto` to start it again.
- To sync changes on the Vagrant VM back to your host computer, run `vagrant rsync-back` once. (Handy for migration files and getting the DB)