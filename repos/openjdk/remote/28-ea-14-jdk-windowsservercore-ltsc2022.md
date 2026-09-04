## `openjdk:28-ea-14-jdk-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:886aa28181398a3edd6d4b2e1284c67c66524a6984a2d00ca1a404dca4cf3ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-14-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:507799a5a7ca7d04222e709070533173f08cb9ef0dd3c1a8ce597225de2fbc7d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2424168815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe7c97f5d8371b0478fe879f3d6a18e30f62c980aa83241874c26e521d86e47`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 04 Sep 2026 21:05:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:19:22 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 04 Sep 2026 21:19:23 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 04 Sep 2026 21:19:28 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 04 Sep 2026 21:19:29 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:19:29 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_windows-x64_bin.zip
# Fri, 04 Sep 2026 21:19:30 GMT
ENV JAVA_SHA256=f6117ba09577758d39749b6abe85930a0e26712e6c86fe1e3331b55cf72a2717
# Fri, 04 Sep 2026 21:20:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 04 Sep 2026 21:20:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af679bec006459bf8d23d10318897132b8303235e96208074ca7cb6f69a6f8`  
		Last Modified: Fri, 04 Sep 2026 21:07:07 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ae11bf5cbb8c823c24a1a4de6d558fd072d9de34b8ea0bd9a61150a6ce2724`  
		Last Modified: Fri, 04 Sep 2026 21:20:19 GMT  
		Size: 356.2 KB (356236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c321555c4844198eb0e93203dfed8e4c26cfd09e68d579d1dd015610235956`  
		Last Modified: Fri, 04 Sep 2026 21:20:19 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8153e9f72abba7f03f8015fd712ac7d8d6903ef6de8f84836e66a3d889099cc8`  
		Last Modified: Fri, 04 Sep 2026 21:20:19 GMT  
		Size: 337.7 KB (337739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bd0f36281f94f2b6893f4ecf92d45193d11901792b0bee1509b48c242615dd`  
		Last Modified: Fri, 04 Sep 2026 21:20:17 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31bae5c2068a90d1a82135c171f7bf33b5d3e65ebc19151ab36d00197209da7`  
		Last Modified: Fri, 04 Sep 2026 21:20:17 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51747cdc0419ece56a84fe05fad654663c0b7ac9c55142845bda07b571b55f49`  
		Last Modified: Fri, 04 Sep 2026 21:20:17 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdefce48ac962d067e432ab6554ce58b1355e40c59d3e765355101399e56eea9`  
		Last Modified: Fri, 04 Sep 2026 21:20:33 GMT  
		Size: 239.5 MB (239469520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8147acaf94916746dbc0bd20e5bddad0ad2797b5e6739a908163754780abc285`  
		Last Modified: Fri, 04 Sep 2026 21:20:17 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
