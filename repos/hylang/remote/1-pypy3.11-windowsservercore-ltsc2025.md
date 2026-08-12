## `hylang:1-pypy3.11-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:1f1622a5cfff96a414ff08db5858c2758388db49df46ee99758df1588d60bf9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `hylang:1-pypy3.11-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull hylang@sha256:5978880e9859e5813f827a5d9642325d85c35add9ca1f6620dbec63b58be1615
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2495532111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c637e231f7121cfdf8bf4f0390977462f21f9a2cc58d4feefe5ad8027327057f`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:49:30 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:49:39 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:49:40 GMT
ENV PYPY_VERSION=7.3.23
# Wed, 12 Aug 2026 17:50:19 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.11-v7.3.23-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '948b8ea58dea5b9917210fe4afd242c788fbfaba1c3f1a25e696a404f703389a'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.11-v7.3.23-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Installing "wheel" (backwards compat) ...'; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:50:19 GMT
CMD ["pypy"]
# Wed, 12 Aug 2026 18:24:17 GMT
ENV HY_VERSION=1.3.1
# Wed, 12 Aug 2026 18:24:17 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 12 Aug 2026 18:25:17 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 12 Aug 2026 18:25:17 GMT
CMD ["hy"]
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
	-	`sha256:c3bf9629e3b114b952c8857ccb303d4df4a5bcdeb86edb8a93fcb5278560c99d`  
		Last Modified: Wed, 12 Aug 2026 17:37:12 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d5d7bd658a92c6a8e38b70f0e0569534423fe835bbac06f8707f99256062bb`  
		Last Modified: Wed, 12 Aug 2026 17:50:25 GMT  
		Size: 361.2 KB (361197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595919d782e01b0d15265acc11dc1e9762531f9d89ad935b02c70fff7aaa6c90`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 15.5 MB (15538582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54198de55b81af38365433c574d2db2015c1ffb877d267f0bef8232904b8f17`  
		Last Modified: Wed, 12 Aug 2026 17:50:25 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05848e375446677f6a4cb9e75219e6b8bc39ff4c3b5035cc02c435ce4c301427`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 30.9 MB (30876949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9858bd07dc0d4811097dcc036591f6f82b562d879e075647f59686f91d5890`  
		Last Modified: Wed, 12 Aug 2026 17:50:25 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffced0c6dba65544675958ab467a0e8dfe91f942bc3e40af0880fbb2ccdf9aab`  
		Last Modified: Wed, 12 Aug 2026 18:25:22 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d039fbeccdc95be625a2d9dd381b697f819417b2778a31381a862a80747364`  
		Last Modified: Wed, 12 Aug 2026 18:25:22 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f783709152687bb83a85445f13f5e7f5a995c7688562747dce549c14794f930e`  
		Last Modified: Wed, 12 Aug 2026 18:25:23 GMT  
		Size: 8.0 MB (7962166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9531ed6e5bbb22d7d8c642b2dc2bb643e7337ef58b3638ae0003e614f868a0b8`  
		Last Modified: Wed, 12 Aug 2026 18:25:22 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
