## `openjdk:27-ea-31-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:ec58f8d182062cbf8edcf7ee2f3bd9397103dfbe44bdc3d5744f7baf0e9150fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:27-ea-31-jdk-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:679db6d4f1995563ba255292e5fb9c806e6e1e3e56437c4f6a1c2148944dcf42
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2579277220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458b416560c7ab617c5a80f3747944c235710f8f647a7172819bac658dd14e2b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Fri, 17 Jul 2026 22:00:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 Jul 2026 22:01:08 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 17 Jul 2026 22:01:09 GMT
ENV JAVA_HOME=C:\openjdk-27
# Fri, 17 Jul 2026 22:01:17 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 17 Jul 2026 22:01:19 GMT
ENV JAVA_VERSION=27-ea+31
# Fri, 17 Jul 2026 22:01:20 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_windows-x64_bin.zip
# Fri, 17 Jul 2026 22:01:21 GMT
ENV JAVA_SHA256=a1ffc34836a69587504027c8eef66314cae04e4a3f7891cdef9de6a61115e348
# Fri, 17 Jul 2026 22:01:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 17 Jul 2026 22:01:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf0d360a5c7cbd8c10da37a44d354cd6ce905fb555df363d6c4818413368ec3`  
		Last Modified: Fri, 17 Jul 2026 22:01:58 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82453bbbf3a86acbb22160a502e30eeb7f222a6e41f18a683059b482ae172b48`  
		Last Modified: Fri, 17 Jul 2026 22:01:58 GMT  
		Size: 377.2 KB (377173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba9244e6c730944b893d265157c2c74e68db43573f089700af10857d35cd08f`  
		Last Modified: Fri, 17 Jul 2026 22:01:58 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25526b30a5fea142fec1276b115e9f531d1b1556bc0785726c06fd9a778fa3b7`  
		Last Modified: Fri, 17 Jul 2026 22:01:58 GMT  
		Size: 360.7 KB (360700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3674eb8ca69642232da167abba618e76b61b42cf4cd11ff17596daf865a0df`  
		Last Modified: Fri, 17 Jul 2026 22:01:56 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63fdeb6c71480fe78185be56cfd784e31c63006013014fc328e51fa0e66c863`  
		Last Modified: Fri, 17 Jul 2026 22:01:56 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44818bec78b8002f63d350b3e2ee699d0425a87edc7b1fb395f314df34852e53`  
		Last Modified: Fri, 17 Jul 2026 22:01:56 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80d7b4640791646fe164dd97364df7d6d7e29005252c609d18b95ecf37038e6`  
		Last Modified: Fri, 17 Jul 2026 22:02:10 GMT  
		Size: 223.5 MB (223523449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c0a37f70935128237de4a88158c41bb3cddfdab4ff73c9d9c222ff19c83fbb`  
		Last Modified: Fri, 17 Jul 2026 22:01:56 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:27-ea-31-jdk-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:6b6e4dc9d249e6d7bc7f4aa488725941b83237849526a3adfc581bb128629d3c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2381893453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c4751efbb99d75688805f5a0cde424cba9f8c8650e7e9bcc2c7fb8d49ea9c5`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Fri, 17 Jul 2026 22:00:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 Jul 2026 22:01:41 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 17 Jul 2026 22:01:42 GMT
ENV JAVA_HOME=C:\openjdk-27
# Fri, 17 Jul 2026 22:01:52 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 17 Jul 2026 22:01:52 GMT
ENV JAVA_VERSION=27-ea+31
# Fri, 17 Jul 2026 22:01:53 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_windows-x64_bin.zip
# Fri, 17 Jul 2026 22:01:55 GMT
ENV JAVA_SHA256=a1ffc34836a69587504027c8eef66314cae04e4a3f7891cdef9de6a61115e348
# Fri, 17 Jul 2026 22:03:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 17 Jul 2026 22:03:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df55a446d745c7fbbc18ba3e71038c10f971691e9ebcdff560afd2083fd1f055`  
		Last Modified: Fri, 17 Jul 2026 22:04:09 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b2fbeeb38b2ed2f8dd2296c91034022b633b3df530599717d65e8b268af017`  
		Last Modified: Fri, 17 Jul 2026 22:04:09 GMT  
		Size: 490.9 KB (490916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b6ee90b90df45238cb2b36866380bd2f75c985aa094b43c5a5cbe1c8dc3ba5`  
		Last Modified: Fri, 17 Jul 2026 22:04:09 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa765120e19c77102a632be4b4e56e9c51ad053df265adc40324b14ea13d995`  
		Last Modified: Fri, 17 Jul 2026 22:04:09 GMT  
		Size: 338.3 KB (338296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc23a16448911b3ff770918313a13b6bf82cc5353f63046e0725ea2d80b01c2d`  
		Last Modified: Fri, 17 Jul 2026 22:04:07 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06fdc2ce0ac0376b39d8c3cb64106b347685a60550a3e53c386c46587a8fdca`  
		Last Modified: Fri, 17 Jul 2026 22:04:07 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d1e9ceab1500bcf23f0a525f9f2080a169692e4c89afcfcfece751e4f1a4ba`  
		Last Modified: Fri, 17 Jul 2026 22:04:07 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4893449e92abe21621abdbdb37d34f75118273859c2bbdaa04f4ee01e3db88`  
		Last Modified: Fri, 17 Jul 2026 22:04:20 GMT  
		Size: 223.5 MB (223503293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4287e565972c61f4c6163681cec5cf619f0de4ee0bdb24e4f7c1d281f5951a3d`  
		Last Modified: Fri, 17 Jul 2026 22:04:07 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
