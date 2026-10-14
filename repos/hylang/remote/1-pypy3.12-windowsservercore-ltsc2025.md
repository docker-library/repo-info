## `hylang:1-pypy3.12-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:26fb3acde61201d7ca454e3affed565ed80ed7b919fb241d4133a8491218f4e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `hylang:1-pypy3.12-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull hylang@sha256:a986834ab636907afa0472b8074e34749cecad6ca8509fa0cc68d46afc327caf
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2444754728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e00c092e02ab660203358fe9ed65f443df3a8e10ec86c2a49c6f004b699c5032`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Wed, 14 Oct 2026 20:17:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Oct 2026 20:18:30 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Wed, 14 Oct 2026 20:19:09 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Wed, 14 Oct 2026 20:19:10 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 14 Oct 2026 20:19:56 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '225aa62deed1a624c86d5ffd03cc34615ff927b095d8508ad82593ee23ddce91'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.1-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Wed, 14 Oct 2026 20:19:58 GMT
CMD ["pypy"]
# Wed, 14 Oct 2026 21:09:43 GMT
ENV HY_VERSION=1.3.1
# Wed, 14 Oct 2026 21:09:44 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 14 Oct 2026 21:10:39 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 14 Oct 2026 21:10:40 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66174f71f59a875a940cfc7c0e03c74ee51b21ffa5c68b0912ffcd82cd9251d7`  
		Last Modified: Wed, 14 Oct 2026 20:20:06 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9e6d32087a112d8105cf5141d8f1707b87c36f4a9b8a272598c2da34a048dd`  
		Last Modified: Wed, 14 Oct 2026 20:20:05 GMT  
		Size: 355.2 KB (355173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f117281cf9afb3b2737ca19f477547530f9a32f70526523915920ce8fcccb56b`  
		Last Modified: Wed, 14 Oct 2026 20:20:09 GMT  
		Size: 15.5 MB (15538162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32007ba53074343ea91677ab839dfe64f28dfa58f9b3b4e690641d667a8020c1`  
		Last Modified: Wed, 14 Oct 2026 20:20:05 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be38ab8909460994e993e09782fe2a20d22b2b2c48439a18a23bedb6de01cce`  
		Last Modified: Wed, 14 Oct 2026 20:20:09 GMT  
		Size: 30.3 MB (30330401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1d120d595113b0086472a0f99f13c432f4d07c30eb610d3f404e55de9812bc`  
		Last Modified: Wed, 14 Oct 2026 20:20:05 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf6f609591c0dfdac8d4a3ef149a0982b74303874135c6d20d652deef13e933`  
		Last Modified: Wed, 14 Oct 2026 21:10:44 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1349a907623f8ee3b7ee33002a1366c7d902b5b506313d63f8436e7f08b296`  
		Last Modified: Wed, 14 Oct 2026 21:10:44 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3507e895e67a7fa2813780f5ec34ec2ee0b731dbac42cf56638b0c6363d8e87b`  
		Last Modified: Wed, 14 Oct 2026 21:10:45 GMT  
		Size: 6.5 MB (6528965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3155e78d3e8d4a61ad7f9ccc318bee1f29ff04f4686f8e65023c79af989ac596`  
		Last Modified: Wed, 14 Oct 2026 21:10:44 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
