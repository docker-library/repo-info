## `openjdk:27-ea-32-jdk-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:9d8312d2a07bbddb3b415d764237b84355958303238109b1dae1673b33fb9e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `openjdk:27-ea-32-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:0e1f189a0f1ec1132590c8bf8b489ce1d643d0b6ab6f1a3db7d068ac78351f0c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2381961827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8280496da9e24db8124fede2a7f15ae7edeaed523ee9a7b6acb2a68366838a7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 27 Jul 2026 22:10:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 27 Jul 2026 22:11:50 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:11:51 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 27 Jul 2026 22:12:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:12:00 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 22:12:01 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/32/GPL/openjdk-27-ea+32_windows-x64_bin.zip
# Mon, 27 Jul 2026 22:12:02 GMT
ENV JAVA_SHA256=fbe4e05c3bf4aa91e8782ae887d4dcca36195aa7cd9526a65653cd07782f678c
# Mon, 27 Jul 2026 22:12:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 27 Jul 2026 22:12:32 GMT
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
	-	`sha256:7dfc05784a8746488d4480672f4e71448ba6d2f00d21495789d3e3597e5f6213`  
		Last Modified: Mon, 27 Jul 2026 22:12:39 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd60eb94902344f4506a03436d85c216847b45d5b8df634c42921b973f58bcb5`  
		Last Modified: Mon, 27 Jul 2026 22:12:39 GMT  
		Size: 503.5 KB (503516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee5fb4580d79f6910835229e899255517aaaae71385b47193755d617b455ab5`  
		Last Modified: Mon, 27 Jul 2026 22:12:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793a26e2bc734a2ec5560ab8af2a213d41c2ef3b8135f564b9b59a3d35f87a79`  
		Last Modified: Mon, 27 Jul 2026 22:12:39 GMT  
		Size: 351.9 KB (351928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0709fbb8151e581991723c74778425e45d7e78cb4a64835974ed4745054d69`  
		Last Modified: Mon, 27 Jul 2026 22:12:37 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35383e02d5dd18a14a9108f3148f383447aee5a5689a2320d5c9b892243dff3e`  
		Last Modified: Mon, 27 Jul 2026 22:12:37 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc001e746ca8ec771c10c8670ca1cd02dacf79cd5e7c2eef46951742d0d21d5`  
		Last Modified: Mon, 27 Jul 2026 22:12:37 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5594abeac6ed4aac07c85f07172de0e6d44f0b848123675141ae878fed1caae6`  
		Last Modified: Mon, 27 Jul 2026 22:12:51 GMT  
		Size: 223.5 MB (223545372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bf222ab608f541de468bf766ba13ab97cf2daef2ae539e8b7c759a0cc3dbb3`  
		Last Modified: Mon, 27 Jul 2026 22:12:37 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
