## `hylang:python3.15-rc-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:3f706ce1317f78a28b75eb9c6b0941cc9fbe267d77ff411d4838ca70be3a11a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `hylang:python3.15-rc-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull hylang@sha256:48150fd1e6932c914d20cc0e4e6973f8f7368d2b140c7253767369f893a983f0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2521278444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5de72b8c14166f4afc255debcb2ea35a8aebe960a1fd3ff6c0e69a168a558fa`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Tue, 01 Sep 2026 22:54:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 01 Sep 2026 22:54:35 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 01 Sep 2026 22:54:38 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Tue, 01 Sep 2026 22:54:38 GMT
ENV PYTHON_SHA256=a74bf15b3184ea885d39b4eb9b6fc4ac0a696d7bb605d879c024af4433fa72da
# Tue, 01 Sep 2026 22:56:52 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Tue, 01 Sep 2026 22:56:53 GMT
CMD ["python"]
# Wed, 02 Sep 2026 01:32:49 GMT
ENV HY_VERSION=1.3.1
# Wed, 02 Sep 2026 01:32:50 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 02 Sep 2026 01:34:13 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 02 Sep 2026 01:34:13 GMT
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
	-	`sha256:81b8792dd6d43a270b57c26147f7486b6624ae135f15b31a1bf0eed2596489f8`  
		Last Modified: Tue, 01 Sep 2026 22:56:59 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444551ba87fcde8775b391970f8f12edd8474c8b2b56585afa1bc85092e86eb9`  
		Last Modified: Tue, 01 Sep 2026 22:56:58 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4520ff3dae55c2cbc79bdb22b4d74ef807558bc9bc2dafa61e1f2fafc25ab250`  
		Last Modified: Tue, 01 Sep 2026 22:56:58 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed95067521281616aca306a0fccd34b4fb716ee94665b3845fb32c0e34db527`  
		Last Modified: Tue, 01 Sep 2026 22:56:58 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabfe7c6c00dedcad421bae4c5adb2be9ae571a0095830075334a13a432f920c`  
		Last Modified: Tue, 01 Sep 2026 22:57:03 GMT  
		Size: 72.2 MB (72245984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3f5554b56655ec546dfd4a306a0f9e91ecc91fd95844186b88ab790fb34f73`  
		Last Modified: Tue, 01 Sep 2026 22:56:58 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83a8ae3820389b8236317fac8c8c71fa777e824feb8c2726f7703ccdbb5847f`  
		Last Modified: Wed, 02 Sep 2026 01:34:17 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a630d2dc6337593461d7fc69069fe330f6760f1d49f234124210de9a7351986`  
		Last Modified: Wed, 02 Sep 2026 01:34:17 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da102df2fb0033ccdb50cfe3c29d5bc4769cfdd63289bd86112437715c1fb9c1`  
		Last Modified: Wed, 02 Sep 2026 01:34:19 GMT  
		Size: 8.2 MB (8236721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c20717053c70590a265f0c7db4e0ed4212bf03e4ad340ee5e4c2d0d6e5f75a`  
		Last Modified: Wed, 02 Sep 2026 01:34:17 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
