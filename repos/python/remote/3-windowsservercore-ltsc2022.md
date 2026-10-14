## `python:3-windowsservercore-ltsc2022`

```console
$ docker pull python@sha256:89bd6a1f107abb73244bd7e9c87ceb8c90b1ad751abbf0b9386545cc81ae5e02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `python:3-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull python@sha256:d5c35a14c176dff73a20989f860981b983fb30446d64bae425bd4719ed2e366a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2298185707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a96c9b765bd86a1e2a0656784434ce907055828e06798ac2db16bfeccaf7ef0`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:05:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:15:16 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 13 Oct 2026 23:15:16 GMT
ENV PYTHON_VERSION=3.15.0
# Tue, 13 Oct 2026 23:15:17 GMT
ENV PYTHON_SHA256=67d9a63eb145a34aa939f02eadbf8c57f21fcdd6decb901ccac578d2d1f01d6f
# Tue, 13 Oct 2026 23:15:55 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:15:55 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc70757553b737e7ab94cc14247b8cf3630b2a21b9e7973f6364c5e1b8fc1fe`  
		Last Modified: Tue, 13 Oct 2026 23:06:31 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5316824a562f0f1884f759a8e9de8ceb12dfa0e3ff46ff26d94a252135a00546`  
		Last Modified: Tue, 13 Oct 2026 23:15:59 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50d3ada52c415841e0c1a6acfadcdd1f142142c35700b96a6620e60ebb427cb`  
		Last Modified: Tue, 13 Oct 2026 23:15:59 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a47f412f27f542bdf1f65ef39f0f5aba24e118a01a9b3d2034601d733100300`  
		Last Modified: Tue, 13 Oct 2026 23:15:59 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55cf4073127f6b8e376649459f15abab9077c39a341c5b406c65a3af9cdf937`  
		Last Modified: Tue, 13 Oct 2026 23:16:05 GMT  
		Size: 71.9 MB (71893655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e181970f09a1ac19deb8ea8e040f11de12cd3d27426d5c3b398d331a0851e7`  
		Last Modified: Tue, 13 Oct 2026 23:15:59 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
