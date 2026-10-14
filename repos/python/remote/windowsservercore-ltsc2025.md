## `python:windowsservercore-ltsc2025`

```console
$ docker pull python@sha256:7da47370f7cb0cfe46eb23944fb9f857494e9dbe63daa1a5ac8569d79250efbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `python:windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull python@sha256:fb3c208a79e699c0485ae06f47dca57602582466d155505dc954e0879d7a8232
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2464084865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddbe99005c50d11287a726c55fa63012396c5bf785b9acf693b9e243de5e6837`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:13:06 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 13 Oct 2026 23:13:07 GMT
ENV PYTHON_VERSION=3.15.0
# Tue, 13 Oct 2026 23:13:07 GMT
ENV PYTHON_SHA256=67d9a63eb145a34aa939f02eadbf8c57f21fcdd6decb901ccac578d2d1f01d6f
# Tue, 13 Oct 2026 23:13:45 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:13:45 GMT
CMD ["python"]
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
	-	`sha256:94e773650491efe08e74429b95a81d4d00910a3691d8b274b73e05f43cd2736d`  
		Last Modified: Tue, 13 Oct 2026 23:03:31 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40ba3770a7c2b7174d8046ca578057d8a8d882962057641ff7732905d14e2c1`  
		Last Modified: Tue, 13 Oct 2026 23:13:49 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdef73d48f6bda2bf256c120d1f4783e3c2b10249c499e6d145bae35d36b55bf`  
		Last Modified: Tue, 13 Oct 2026 23:13:49 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce0d3f19cc8b09ecce602b4562ffdb04903c0da0f1669f361d5e73265ceb759`  
		Last Modified: Tue, 13 Oct 2026 23:13:49 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ab6951dc1f87f766705aeabe82a7a8d2b4f7f6dee70bb6f23530b0c89e46ff`  
		Last Modified: Tue, 13 Oct 2026 23:13:55 GMT  
		Size: 72.1 MB (72084167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156ed4cad4c689f0da7bf064f0b88a92030673622c3237ec1e9f26bbfee14e0c`  
		Last Modified: Tue, 13 Oct 2026 23:13:49 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
