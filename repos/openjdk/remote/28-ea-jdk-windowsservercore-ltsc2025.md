## `openjdk:28-ea-jdk-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:35800e724f2925941eb1804c7dc8e7bc8e259b529e190b93fc0b72603c6ebe7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `openjdk:28-ea-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:4dff47e9414c5e20e5899842df61f3c90c439fe49e6e247d02bcc288cee57f6d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2681019342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9786bda8adf47bd6ee79eff5967cc9306cfc6364817dab57a2217699873c6278`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 14 Aug 2026 18:00:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 14 Aug 2026 18:00:59 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 14 Aug 2026 18:01:00 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 14 Aug 2026 18:01:13 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 14 Aug 2026 18:01:14 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 18:01:15 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_windows-x64_bin.zip
# Fri, 14 Aug 2026 18:01:16 GMT
ENV JAVA_SHA256=8378faa16b706ea91e76075d582ab264ccc218380d7eeff8945c6cca1c752842
# Fri, 14 Aug 2026 18:02:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 14 Aug 2026 18:02:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f2e4f1cfc41d21ba365087e6cd9d793ce8b0ecccfc78c4f8d650cbbc91eeaa`  
		Last Modified: Fri, 14 Aug 2026 18:03:14 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12863d499430d5b37a8732395a769fd018d99f2f5a54972a7caed41860be9e8d`  
		Last Modified: Fri, 14 Aug 2026 18:03:14 GMT  
		Size: 363.8 KB (363798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c32d035bf0ec2ab129476804e2741540b2634ca20134543c667838f591402d5`  
		Last Modified: Fri, 14 Aug 2026 18:03:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4236a5bbcc8b25d162daa8eb1a90532373ba3efa6578055503dc391fdf4de0ca`  
		Last Modified: Fri, 14 Aug 2026 18:03:14 GMT  
		Size: 382.2 KB (382199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e839919d6b0a1c5376d4148001a3a8394fc8dd180467f731dd8ebfca5090ed88`  
		Last Modified: Fri, 14 Aug 2026 18:03:12 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ed48f584afc560c032625235b7b59f9d64b7ae0c1c1d5cc36c53f5e276f825`  
		Last Modified: Fri, 14 Aug 2026 18:03:12 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6201bcba8aced9c5b55134f97147b6d40ecb804a6a82b97b4d83f332f75d4d80`  
		Last Modified: Fri, 14 Aug 2026 18:03:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be42f29a2e4495935ce4c661c919e0b10a280fc5227c00861f9bd9e903e05147`  
		Last Modified: Fri, 14 Aug 2026 18:03:27 GMT  
		Size: 239.5 MB (239480167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aae888c5ec57c22e9a12301b2bcc9ce652bef6d4ad283830e60c6f3ea53a55c`  
		Last Modified: Fri, 14 Aug 2026 18:03:12 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
