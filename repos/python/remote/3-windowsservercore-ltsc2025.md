## `python:3-windowsservercore-ltsc2025`

```console
$ docker pull python@sha256:251d39ddb870909a57ae34db14b2722903fb6486b4a1f9691eec2812846e610a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `python:3-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull python@sha256:d031e8fd51348085be7f41cc54b2b3782fcb542fb8e670bad150da2a914e967b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2527006346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e272a827c71dce493036ef5e350a2990694acb6e6c5c84e8fbf467c1cbe244`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Thu, 01 Oct 2026 21:38:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Oct 2026 21:38:14 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 01 Oct 2026 21:38:15 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:38:16 GMT
ENV PYTHON_SHA256=759be887b96e736a3ca886daf8d575f18fcae1a09efab6902f42d59e8999f8ef
# Thu, 01 Oct 2026 21:40:01 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Thu, 01 Oct 2026 21:40:02 GMT
CMD ["python"]
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
	-	`sha256:c776c350205b2cf62b83c73efc030048cc0077b65efd25a5c1a68cc39e14a7e2`  
		Last Modified: Thu, 01 Oct 2026 21:40:08 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220d27fe1606449f9d9fd23636e0c2b88c99d8c165e3b1a161e71cdd46805049`  
		Last Modified: Thu, 01 Oct 2026 21:40:06 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb3f38227cce272a8e733a957c59f677851c627e7de2f2abfc2a54b97b99d13`  
		Last Modified: Thu, 01 Oct 2026 21:40:06 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962779d4d2d8d3a81faa830a20a97722a56cdb6b2c43c8c0e35740c5527fd834`  
		Last Modified: Thu, 01 Oct 2026 21:40:06 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c1e2ed33dd827cbeb8b0a20013649cfdaf1a8bcccdab4af68ce959f217c7e7`  
		Last Modified: Thu, 01 Oct 2026 21:40:12 GMT  
		Size: 69.4 MB (69370356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c861690400e4602df633831b717e9202a7f856cb578fa0841b5b5db670f498ca`  
		Last Modified: Thu, 01 Oct 2026 21:40:06 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
