## `openjdk:28-ea-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:85a0506897d2516d936526ec5d0902f25c108a9eaf4894152a8c3ede5f307cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-jdk-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:43630f0818abe76824c4cde3149087592cd2fce319d34f74f8c115e01cf21a44
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2698075023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4aea3d6eaa953af03680446dcd307fa10ffa56ea44ba734cd5c9a4c525502d9`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Tue, 15 Sep 2026 21:18:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 21:19:43 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 15 Sep 2026 21:19:44 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 15 Sep 2026 21:19:55 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 15 Sep 2026 21:19:56 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 21:19:57 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_windows-x64_bin.zip
# Tue, 15 Sep 2026 21:19:58 GMT
ENV JAVA_SHA256=46049a24de70e75a40788387e1da9825aee06ad1ddf01aaaa11fec896a8d9461
# Tue, 15 Sep 2026 21:20:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 15 Sep 2026 21:20:32 GMT
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
	-	`sha256:dc5e43551c2cad3f8cf54f4e1e2f20dbfeab9f1ab153b09f47777155fdcff309`  
		Last Modified: Tue, 15 Sep 2026 21:20:38 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc20e6e6a8b9821a91a59b305ce569075dac10fa1d26f2cca7ccf74bce81cc92`  
		Last Modified: Tue, 15 Sep 2026 21:20:39 GMT  
		Size: 388.6 KB (388622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a636967ccf520e8635ea495e5aea18e5043a81bbf4049564d77cb644ef7ad46`  
		Last Modified: Tue, 15 Sep 2026 21:20:38 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83b4a1eead3e3e75102535f374255f44631aa64e7ff203af69f4567a7eaee90`  
		Last Modified: Tue, 15 Sep 2026 21:20:38 GMT  
		Size: 374.9 KB (374925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f263eba93a2d1ac710fa39f68c882c5f7bd84b439dc0f9150683a9f5d7fc8476`  
		Last Modified: Tue, 15 Sep 2026 21:20:36 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e32e8ffa74cc1437637f847a90d604237542f2b28343b45f2b9fb4aa2f39339`  
		Last Modified: Tue, 15 Sep 2026 21:20:36 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee429915136e5b1686908f74a90c73f3d97fc38e26d767fc7ad5ffcadcdf0e48`  
		Last Modified: Tue, 15 Sep 2026 21:20:36 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc595b3bf9d78632c2472f35211d1970bbf96321b4fcc040f2695c4fa8a7206`  
		Last Modified: Tue, 15 Sep 2026 21:20:53 GMT  
		Size: 239.7 MB (239674110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b514605e9257be5db88e77c3cbe961fdc594d056058aa9afffca81e306a6ae0a`  
		Last Modified: Tue, 15 Sep 2026 21:20:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:f333729ae7acafcd6617aedaaafbaee5ef4129eddec31dbd8fc84566bbb1626b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2459864230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5536a7e6e96d17760c4759d88bf71880bdae7f7c79a85c5c62fb9c25ff2f04df`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 21:43:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 21:44:06 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 15 Sep 2026 21:44:07 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 15 Sep 2026 21:44:16 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 15 Sep 2026 21:44:18 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 21:44:18 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_windows-x64_bin.zip
# Tue, 15 Sep 2026 21:44:19 GMT
ENV JAVA_SHA256=46049a24de70e75a40788387e1da9825aee06ad1ddf01aaaa11fec896a8d9461
# Tue, 15 Sep 2026 21:45:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 15 Sep 2026 21:45:34 GMT
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
	-	`sha256:57027957fecb495ad672dbd5bee556eb4239ccd70b2f0d23685d401e9e561140`  
		Last Modified: Tue, 15 Sep 2026 21:45:46 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91712529c423134aa75a39a8c95f904737f6dd17e53cdcbc6e70fb1c6b007c52`  
		Last Modified: Tue, 15 Sep 2026 21:45:46 GMT  
		Size: 362.3 KB (362287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8469af69b957d25be147a1f2eaad6fc9bfcbc7b92dd7ffd3295dd90d570a857a`  
		Last Modified: Tue, 15 Sep 2026 21:45:46 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f1e1f76056f32134190b9e0afbdfa47497f7bc63071bd81e6cd87841cb736`  
		Last Modified: Tue, 15 Sep 2026 21:45:46 GMT  
		Size: 336.1 KB (336110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee8739750631365cda896a715713b7fc9dd9b3f7a2a0d23a78516b2cd39ace7`  
		Last Modified: Tue, 15 Sep 2026 21:45:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051c735d0d13dc85260e840ca4a0c709b1f22f41bb835c7216cceba8f53c6951`  
		Last Modified: Tue, 15 Sep 2026 21:45:45 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bf62f5b431a0b0a9cf722f76c7879eb926d83f4691074eec8988e0624dbb2e`  
		Last Modified: Tue, 15 Sep 2026 21:45:44 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4299ac73fcf15a03c10077586ea9468ce32ad8c094c474e581a394e7896239a`  
		Last Modified: Tue, 15 Sep 2026 21:46:02 GMT  
		Size: 239.7 MB (239669293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc954facad5109284cb513479559aaf30b9fdee4ba0a67f2a9da04333db8dc92`  
		Last Modified: Tue, 15 Sep 2026 21:45:44 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
