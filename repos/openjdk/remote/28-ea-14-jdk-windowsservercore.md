## `openjdk:28-ea-14-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:1b021365a87cfca6f2d65ebae8503b415dd97749eaeff675ead35bbf41f96e8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-14-jdk-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:afdc53caea5547814562032a3035a8e9125743130aa1d0098057f90800fe0c9e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2697819218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40454f7a7d60100cf01d51e9aa81c5c721dee5485824586de660d32dcea7481`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:36:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:48:04 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:48:05 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 09 Sep 2026 22:48:10 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:48:11 GMT
ENV JAVA_VERSION=28-ea+14
# Wed, 09 Sep 2026 22:48:11 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_windows-x64_bin.zip
# Wed, 09 Sep 2026 22:48:12 GMT
ENV JAVA_SHA256=f6117ba09577758d39749b6abe85930a0e26712e6c86fe1e3331b55cf72a2717
# Wed, 09 Sep 2026 22:48:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:48:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10168a5b915c41c4bd65cf1279b53e33fa3cc32e694a759db1ea2ba4ffc50b2`  
		Last Modified: Wed, 09 Sep 2026 22:37:10 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cd5e1c51e57307b24e530f69c6e43b4896079638d6a687f11a1986da7718af`  
		Last Modified: Wed, 09 Sep 2026 22:48:40 GMT  
		Size: 356.2 KB (356197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510bf5e36c163084983ee9ffe2142c6b3a79052c22417aff313c237d7757eca9`  
		Last Modified: Wed, 09 Sep 2026 22:48:40 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44401c6094a7c87d1e995cd834f6607014e4afd016d11e945fc93747bb74f998`  
		Last Modified: Wed, 09 Sep 2026 22:48:40 GMT  
		Size: 347.6 KB (347644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d270584d25d7181762bb1f2fcec9ac746204e69b33b571142947c5baeaba1fa7`  
		Last Modified: Wed, 09 Sep 2026 22:48:38 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d928dc64445e7180458ebea2b7eb27e48e2886f89994bd51ddb0b278c3fd706f`  
		Last Modified: Wed, 09 Sep 2026 22:48:38 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e516be46c225e86c0e51b0408c2ed8267446a033856c0c3fb81f798dbae11065`  
		Last Modified: Wed, 09 Sep 2026 22:48:38 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d0c6cd26414a6bb487902fc102cc05bd22cc6b671c86d7fd15e6a8f93ee1e5`  
		Last Modified: Wed, 09 Sep 2026 22:48:54 GMT  
		Size: 239.5 MB (239478053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b1bfc6874c74fff3ae3d84800fcbc6cb7b922705d6ab4060a53973d49d72c6`  
		Last Modified: Wed, 09 Sep 2026 22:48:38 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-14-jdk-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:a6a61d9cbee97c76c0a36fe0f0b586ef21cd400bd8ff85088df4b97e5291418c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2459629156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ec386b114b2a4b10dec7d6743fc83a7309f9684107f372d024eaa4391fec28c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:45:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:49:53 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:49:53 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 09 Sep 2026 22:49:59 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:50:00 GMT
ENV JAVA_VERSION=28-ea+14
# Wed, 09 Sep 2026 22:50:00 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_windows-x64_bin.zip
# Wed, 09 Sep 2026 22:50:01 GMT
ENV JAVA_SHA256=f6117ba09577758d39749b6abe85930a0e26712e6c86fe1e3331b55cf72a2717
# Wed, 09 Sep 2026 22:50:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:50:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141cf23bc6265944f15423e0cf748e7288f4d67da9faa51ab9f9d4a93c3a4af7`  
		Last Modified: Wed, 09 Sep 2026 22:46:57 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c714b48c2a1076c5085e22d66c89126833bcf47fdf359d3af6a6c0b7e4c930`  
		Last Modified: Wed, 09 Sep 2026 22:50:36 GMT  
		Size: 349.2 KB (349193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52145da5d045e79a4dd3197995b63ce2f63379d632829cc11a70e057493dcb93`  
		Last Modified: Wed, 09 Sep 2026 22:50:36 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28336bd2d38bd131687bc5f79defa81c09846e497033bda11a7c590cffe4396`  
		Last Modified: Wed, 09 Sep 2026 22:50:36 GMT  
		Size: 325.8 KB (325828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63112075ba3aea10987a6cb01ef8bd10d9e4d62b8a91ee700d3d4fae48c72b4f`  
		Last Modified: Wed, 09 Sep 2026 22:50:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3c7ec44db73355dc1ae1ff2c00c7c4b3e1bb7d6cc9c00e6cb6525eea1bb032`  
		Last Modified: Wed, 09 Sep 2026 22:50:34 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145037714694c671e1c960648336e92344f895bdbf585f3ab3bd492bbbadac34`  
		Last Modified: Wed, 09 Sep 2026 22:50:34 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e6530f74be3a1ae3516caf5bd54930dcb102d7b6318170ca05d5b35034debd`  
		Last Modified: Wed, 09 Sep 2026 22:50:51 GMT  
		Size: 239.5 MB (239457558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2c93caab1c6c7cdffa9bb15393801b0d9fbea05d16fc514473a9fd5905cdfa`  
		Last Modified: Wed, 09 Sep 2026 22:50:34 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
