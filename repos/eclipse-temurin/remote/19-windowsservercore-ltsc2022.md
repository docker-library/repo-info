## `eclipse-temurin:19-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:23cb56ccd8eb0cba593bbc3aacff7a88f2d1105108cac8c36214e8e607ef8259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.1487; amd64

### `eclipse-temurin:19-windowsservercore-ltsc2022` - windows version 10.0.20348.1487; amd64

```console
$ docker pull eclipse-temurin@sha256:7478d0230b7ebdc5b4d41b07c66173869647a2dbf7f4f91162c71d28e8d75763
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1753201434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6f0411535efb7c283036f06eb57290afc4c58236967428bfb8e28863648000`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2023 23:47:40 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 01:40:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 25 Jan 2023 19:26:55 GMT
ENV JAVA_VERSION=jdk-19.0.2+7
# Wed, 25 Jan 2023 19:28:13 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin19-binaries/releases/download/jdk-19.0.2%2B7/OpenJDK19U-jdk_x64_windows_hotspot_19.0.2_7.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin19-binaries/releases/download/jdk-19.0.2%2B7/OpenJDK19U-jdk_x64_windows_hotspot_19.0.2_7.msi ;     Write-Host ('Verifying sha256 (b2372bd728a5a708a4ce5ec6cc8b46489e5292051f4993568ec1d5f395f7e06e) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'b2372bd728a5a708a4ce5ec6cc8b46489e5292051f4993568ec1d5f395f7e06e') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-19' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 25 Jan 2023 19:28:42 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 25 Jan 2023 19:28:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1a65b089bc835b0c3700397b1935e97cf469b0891bb4de3942c8dfbe4b672d47`  
		Last Modified: Thu, 12 Jan 2023 02:33:52 GMT  
		Size: 1.4 GB (1386029089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41f3a43cc9e40e953b9cfe1530c27eed49cf79cdae96e9dfc39b04a1b75ecf`  
		Last Modified: Thu, 12 Jan 2023 02:29:45 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f7629a326541fa168d83e704f3149318e2b6af7754cd9917acef95fa5d9616`  
		Last Modified: Wed, 25 Jan 2023 19:46:11 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a523d3042e446ac19cefe1f92ab97819401918036b3e05783bfd928080034d`  
		Last Modified: Wed, 25 Jan 2023 19:46:45 GMT  
		Size: 366.6 MB (366589817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b106a625d773052287d34b48eb5f47c247aa44515881da95d572aaddfb6a04d7`  
		Last Modified: Wed, 25 Jan 2023 19:46:12 GMT  
		Size: 578.3 KB (578283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9020a5e5f7eff6044165824de964dd41dd62ddf523e7caed3215a78949ae589f`  
		Last Modified: Wed, 25 Jan 2023 19:46:11 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
