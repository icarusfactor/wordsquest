-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 08, 2019 at 01:37 PM
-- Server version: 10.0.38-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userspa2_wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wordsearch`
--

CREATE TABLE `wordsearch` (
	  `word` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `wordsearch`
--

INSERT INTO `wordsearch` (`word`) VALUES
('ADDRESS'),
('ALIAS'),
('ALSA'),
('ANDROID'),
('ANSIBLE'),
('APACHE'),
('APT'),
('ARCH'),
('ARCHITECTURE'),
('ARDUINOIDE'),
('ASCII'),
('AUDACITY'),
('AUDIO'),
('AWK'),
('BACKUP'),
('BASH'),
('BIND'),
('BIOS'),
('BLENDER'),
('BLUETOOTH'),
('BODHI'),
('BOOL'),
('BOOT'),
('BOX'),
('BRIDGE'),
('BROWSER'),
('BTRFS'),
('BUFFER'),
('BUTTON'),
('BYTECODE'),
('CASE'),
('CAT'),
('CENT'),
('CEPH'),
('CHEESE'),
('CHEF'),
('CHILD'),
('CHMOD'),
('CHOWN'),
('CHROME'),
('CINNAMON'),
('CLOUD'),
('COMMUNITY'),
('COMPILE'),
('CONSOLE'),
('COPYLEFT'),
('CPU'),
('CRON'),
('CRUX'),
('CURL'),
('DATABASE'),
('DEBIAN'),
('DEBUG'),
('DEPENDENCY'),
('DESKTOP'),
('DEVICE'),
('DIA'),
('DIG'),
('DISPLAY'),
('DISTRIBUTION'),
('DNF'),
('DOCKER'),
('DOLPHIN'),
('DOWNLOAD'),
('DPKG'),
('DRIVER'),
('DRUPAL'),
('DUMP'),
('EASYNAS'),
('ECLIPSE'),
('ELASTICSEARCH'),
('EMACS'),
('EMULATOR'),
('ENCRYPTION'),
('ENDPOINT'),
('ENLIGHTENMENT'),
('ENTER'),
('ERROR'),
('ESCAPEKEY'),
('EXIM'),
('EXPLOIT'),
('EXT'),
('FAN'),
('FAULT'),
('FEDORA'),
('FFMPEG'),
('FILESYSTEM'),
('FILTER'),
('FIND'),
('FINGER'),
('FIREFOX'),
('FIREWALL'),
('FLAC'),
('FONT'),
('FORM'),
('FORWARDING'),
('FRAME'),
('FREE'),
('FSCK'),
('FUSEFS'),
('GATEWAY'),
('GCC'),
('GENTOO'),
('GIMP'),
('GIT'),
('GNOME'),
('GNU'),
('GNUCASH'),
('GPL'),
('GPU'),
('GREP'),
('GROK'),
('GRUB'),
('GZIP'),
('HALT'),
('HEADPHONES'),
('HEXADECIMAL'),
('HEXCHAT'),
('HISTORY'),
('HOSTNAME'),
('HTML'),
('HYPERTEXT'),
('INKSCAPE'),
('INODE'),
('IPFIRE'),
('IPTABLES'),
('JAVA'),
('JAVASCRIPT'),
('JOYSTICK'),
('KALI'),
('KDE'),
('KERBEROS'),
('KERNEL'),
('KEYBOARD'),
('KICAD'),
('KILL'),
('KNOPPIX'),
('KONQUEROR'),
('KUBERNETES'),
('LABEL'),
('LAMP'),
('LANGUAGE'),
('LATENCY'),
('LDAP'),
('LESS'),
('LIBRARY'),
('LIBRECAD'),
('LIBREOFFICE'),
('LINUX'),
('LOCALHOST'),
('LOGROTATE'),
('LOOPBACK'),
('LSOF'),
('LUBUNTU'),
('MAGEIA'),
('MAN'),
('MANDRIVA'),
('MATE'),
('MEDIAWIKI'),
('MENU'),
('MINT'),
('MIRROR'),
('MKDIR'),
('MODEM'),
('MODPROBE'),
('MONITOR'),
('MORE'),
('MOTHERBOARD'),
('MOUSE'),
('MOUSEPAD'),
('MOZILLA'),
('MYSQL'),
('NAMESERVER'),
('NETMASK'),
('NETSTAT'),
('NFS'),
('NGINX'),
('NICE'),
('NMAP'),
('NODEJS'),
('NOHUP'),
('NTP'),
('NULL'),
('NUMPAD'),
('OFFLINE'),
('OLPC'),
('ONLINE'),
('OPENGL'),
('OPENSHOT'),
('OPENSTACK'),
('OPENVSWITCH'),
('OPENWALL'),
('ORACLE'),
('OVERFLOW'),
('PACKAGE'),
('PACKET'),
('PACMAN'),
('PARSE'),
('PARTITION'),
('PASSWD'),
('PATCH'),
('PCLINUX'),
('PENGUIN'),
('PERL'),
('PERMISSIONS'),
('PHP'),
('PING'),
('PIPE'),
('PORT'),
('POSIX'),
('POSTFIX'),
('POSTGRESQL'),
('POWERSUPPLY'),
('PROCESS'),
('PROGRAM'),
('PROGRESSBAR'),
('PROMPT'),
('PROTOCOL'),
('PROXMOX'),
('PULSE'),
('PUPPET'),
('PUPPY'),
('PWD'),
('PYTHON'),
('QEMU'),
('QUOTA'),
('RASPIAN'),
('RAWTHERAPEE'),
('REACT'),
('READONLY'),
('REBOOT'),
('REDHAT'),
('REDIRECT'),
('REGEX'),
('REPOSITORY'),
('RESOLUTION'),
('ROOT'),
('ROUTER'),
('RPM'),
('SAMBA'),
('SATA'),
('SAYBAYON'),
('SCAN'),
('SCP'),
('SCREEN'),
('SCRIPT'),
('SCROLLBAR'),
('SDCARD'),
('SECONDLIFE'),
('SED'),
('SELINUX'),
('SERIAL'),
('SERVICE'),
('SESSION'),
('SHELL'),
('SHUTDOWN'),
('SLACKWARE'),
('SLAX'),
('SNIFFER'),
('SOCKET'),
('SOLIDSTATE'),
('SOLUS'),
('SORT'),
('SOURCE'),
('SPACEBAR'),
('SPAM'),
('SPARKY'),
('SPAWN'),
('SPEAKERS'),
('SPOOFING'),
('SPOOL'),
('SQUID'),
('SSH'),
('STACK'),
('STEAM'),
('STELLARIUM'),
('STORAGE'),
('STRACE'),
('STUDIO'),
('SUDO'),
('SUSE'),
('SWAP'),
('SWARM'),
('SWITCH'),
('SYMLINK'),
('SYNAPTIC'),
('SYNFIG'),
('SYNFLOOD'),
('SYNTAX'),
('SYSLOG'),
('SYSTEMD'),
('SYSV'),
('TAIL'),
('TAR'),
('TCPIP'),
('TELNET'),
('TEMP'),
('TEXT'),
('THREAD'),
('TOP'),
('TOUCH'),
('TRACEROUTE'),
('TUNNEL'),
('TURNKEY'),
('TUX'),
('UBUNTU'),
('UNAME'),
('UNICODE'),
('UNITY'),
('UNIX'),
('UPDATE'),
('UPGRADE'),
('UPLOAD'),
('UPTIME'),
('USB'),
('USER'),
('VERSION'),
('VIM'),
('VIRTUALBOX'),
('VLC'),
('VNC'),
('VORBIS'),
('WATCH'),
('WGET'),
('WHOAMI'),
('WHOIS'),
('WIFI'),
('WILDCARD'),
('WINE'),
('WIRESHARK'),
('WORDPRESS'),
('XFCE'),
('XFS'),
('XTERM'),
('XUBUNTU'),
('YUM'),
('ZENWALK'),
('ZOMBIE'),
('ZONE'),
('ZORIN'),
('ZYPPER'),
('CONTENT'),
('EMBEDDING'),
('BOUNCE'),
('CLICK'),
('OPTIMIZATION'),
('AUTOMATION'),
('FRAMEWORK'),
('ENGINE'),
('TRAFFIC'),
('BANDWIDTH'),
('MINING'),
('PIXELS'),
('RASTER'),
('VECTOR'),
('RETINA'),
('USERSPACE'),
('KERNELSPACE'),
('FLOW'),
('RESEARCH'),
('KERNING'),
('TRACKING'),
('LEADING'),
('HIERARCHY'),
('ELEMENT'),
('META'),
('ATTRIBUTES'),
('CASCADING'),
('STYLE'),
('DECLARATIONS'),
('APPLICATION'),
('INTERFACE'),
('DEVOPS'),
('EDITOR'),
('CACHING'),
('COMPUTING'),
('DOWNTIME'),
('PRIVATE'),
('NETWORK'),
('VIRTUAL'),
('MACHINE'),
('VISUALIZATION'),
('MODELING'),
('RELATIONAL'),
('HYBRID'),
('NATIVE'),
('FIELD'),
('RESPONSIVE'),
('DEVELOPMENT'),
('KIT'),
('DIGITIZE'),
('BREADCRUMBS'),
('FLAMING'),
('COOKIES'),
('LEGACY'),
('CYBER'),
('MORPH'),
('PLUG'),
('ATTACHMENT'),
('ANALOGUE'),
('ASSISTIVE'),
('BOOKMARK'),
('BOOLEAN'),
('BROADBAND'),
('COMPRESSION'),
('DOMAIN'),
('INTERNET'),
('INTRANET'),
('BYTE'),
('FLOP'),
('HERTZ'),
('MALWARE'),
('PHISHING'),
('PROCESSOR'),
('SAAS'),
('VIRUS'),
('VIRAL'),
('WIRED'),
('PROTECTED'),
('RECOGNITION'),
('LEARNING'),
('BOTS'),
('BLOCKCHAIN'),
('ANALYTICS'),
('AUGMENTED'),
('ALT'),
('DISASTER'),
('RECOVERY'),
('DDOS'),
('ATTACK'),
('SCRUM'),
('AGILE'),
('SANDBOX'),
('FEED'),
('CREDENTIALS'),
('ACCOUNT'),
('MOBILE'),
('FRAUD'),
('REGISTER'),
('INTERACTIVE'),
('BOTNET'),
('REMOTE'),
('REQUEST'),
('ANALYST'),
('ALLOW'),
('SHARED'),
('CLIENT'),
('DEDICATED'),
('LOCK'),
('SCAM'),
('REPORT'),
('INTEGRATION'),
('CYCLE'),
('FORMAT'),
('IMMERSIVE'),
('OVERLAY'),
('INSTANCE'),
('SIMULATE'),
('STREAM'),
('PROJECT'),
('FIRMWARE'),
('ASSOCIATION'),
('AJAX'),
('JQUERY'),
('BACKBONE'),
('BANNER'),
('BITTORRENT'),
('DATAGRAM'),
('DHCP'),
('DYNAMIC'),
('COMMERCE'),
('BOMB'),
('FAVICON'),
('LAYOUT'),
('HOME'),
('INBOX'),
('MEME'),
('MUTLICASTING'),
('NOSQL'),
('OPTICAL'),
('CARRIER'),
('PAYLOAD'),
('PRIMATIVE'),
('PROXY'),
('RANSOMWARE'),
('SCRAPING'),
('TRACEBACK'),
('FORUM'),
('IRC'),
('HOOK'),
('PRINTER'),
('POINT'),
('BAREBONES'),
('CABLE'),
('CLONE'),
('CLUSTER'),
('CHIPSET'),
('COMPONET'),
('DOCKING'),
('PITCH'),
('DONGLE'),
('RAM'),
('ROM'),
('DRAM'),
('CORE'),
('FUNCTION'),
('FSB'),
('TOKEN'),
('IMAP'),
('IRQ'),
('NAND'),
('NODE'),
('NVRAM'),
('OVERCLOCK'),
('OLED'),
('OSD'),
('PERIPHERAL'),
('RFID'),
('SURGE'),
('WEBCAM'),
('ABEND'),
('ACTIVATION'),
('ADAPTIVE'),
('ARCHIVE'),
('ARRAY'),
('ALIASING'),
('ALERT'),
('CELL'),
('CHECKSUM'),
('ENCODING'),
('INSTALL'),
('CONTAINER'),
('CONTEXTUAL'),
('CURSOR'),
('CRASH'),
('PANIC'),
('DAEMON'),
('DASHBOARD'),
('DEPRECATED'),
('DIALOG'),
('DOCUMENT'),
('DRAG'),
('DROP'),
('EMOJI'),
('IMPORT'),
('EXPORT'),
('FREEWARE'),
('HASH'),
('HOTFIX'),
('INDEX'),
('KVM'),
('HYPERVISOR'),
('INTERPRETER'),
('ITERATION'),
('JDBC'),
('JRE'),
('JVM'),
('KEYLOGGER'),
('LOOP'),
('LOSSLESS'),
('LEAK'),
('METHOD'),
('MIDDLEWARE'),
('MOUNT'),
('OBJECT'),
('OPACITY'),
('PATH'),
('RDBMS'),
('RUNTIME'),
('SNIPPET'),
('SPYWARE'),
('TEMPLATE'),
('TOOLCHAIN'),
('TYPECASTING'),
('VIRTUALIZATION'),
('WIDGET'),
('WAVEFORM'),
('WIZARD'),
('WORM'),
('WYSIWYG'),
('ANSI'),
('ARP'),
('RATIO'),
('ASPECT'),
('SECTOR'),
('COLLISION'),
('CONSTANT'),
('DITHERING'),
('FORMULA'),
('FRAGMENTATION'),
('GRAYSCALE'),
('HANDSHAKE'),
('INTEGER'),
('INTERRUPT'),
('MIDI'),
('MNEMONIC'),
('TOPOLOGY'),
('PARITY'),
('RECURSION'),
('REFRESH'),
('SUBNET'),
('MASK'),
('TROUBLESHOOT'),
('UEFI'),
('VAPORWARE'),
('VLAN'),
('WARDRIVING'),
('ENUM'),
('HEAP'),
('LONG'),
('STRING'),
('CMYK'),
('SNMP'),
('CONDITION'),
('DEFINE'),
('EVENT'),
('PATTERN'),
('VIOLATION'),
('ALLOCATE'),
('POINTER'),
('BTREE'),
('BRACKET'),
('CALLBACK'),
('COMMENT'),
('CONCURRENCY'),
('DJANGO'),
('EPOCH'),
('GLITCH'),
('HEURISTIC'),
('EVALUATION'),
('INHERIT'),
('JUPYTER'),
('KLUDGE'),
('JSON'),
('OVERLOADING'),
('MUTEX'),
('NESTED'),
('OBFUSCATED'),
('PARENTHESIS'),
('PERSISTANT'),
('PICKLING'),
('POLYMORPHISM'),
('SEED'),
('RETURN'),
('SEQUENCE'),
('SPAGHETTI'),
('TRUE'),
('FALSE'),
('VOID'),
('MARKUP'),
('ANGULAR'),
('DEPLOY'),
('TIMESTAMP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wordsearch`
--
ALTER TABLE `wordsearch`
  ADD PRIMARY KEY (`word`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

