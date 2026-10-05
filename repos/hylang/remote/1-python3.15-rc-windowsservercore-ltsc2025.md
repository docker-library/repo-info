## `hylang:1-python3.15-rc-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:e610da99311c8c339e7ee243b4e44584ba1b3a3661836bd095c6b4d9d9b1d6b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `hylang:1-python3.15-rc-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull hylang@sha256:8f7bbdf7838ad3a3d93d07e6a368962ce018c3375b56d48ea34e1e771d76765d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2538292889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c5e46049448d93e782931249988a82bbbbc8b03f485bed0e343c59447c4948`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 05 Oct 2026 21:27:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 05 Oct 2026 21:27:29 GMT
ENV PYTHONIOENCODING=UTF-8
# Mon, 05 Oct 2026 21:27:30 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Mon, 05 Oct 2026 21:27:31 GMT
ENV PYTHON_SHA256=b4e9f53f4c930e04db445de94675d8306674b4734dd1a81777418cff6136c4de
# Mon, 05 Oct 2026 21:29:27 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Mon, 05 Oct 2026 21:29:27 GMT
CMD ["python"]
# Mon, 05 Oct 2026 21:51:20 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 21:51:21 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 21:51:58 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Mon, 05 Oct 2026 21:51:59 GMT
CMD ["hy"]
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
	-	`sha256:752f707085728548b438a47e78344dd0c753ff27c1d15608dc9743cc24e9b1b7`  
		Last Modified: Mon, 05 Oct 2026 21:29:33 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba1bf2a6634d95d9d07b9afaeee28785bc5b60a7ce2f7063f972fa8709a08e2`  
		Last Modified: Mon, 05 Oct 2026 21:29:32 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bea0e6a5d507fd60fbd02162b0a03f6225b9ceddd74020a74bea625450b9e62`  
		Last Modified: Mon, 05 Oct 2026 21:29:32 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504cf4bcdafa9f70e6691b5f5964a0f5817243173f52960a2e19f655be32771b`  
		Last Modified: Mon, 05 Oct 2026 21:29:31 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3292f88b2abb524caa356f86b3b33f28fe975e8db002389aaf039ad56de65a85`  
		Last Modified: Mon, 05 Oct 2026 21:29:37 GMT  
		Size: 72.3 MB (72294403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063a343640254b9740199011a48c9199a85c0a10d7e04917c4ceffc31ef418b7`  
		Last Modified: Mon, 05 Oct 2026 21:29:32 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9430a2dab7180469b5fece4b00fcdc230a4309c1a1e8878344ee22915e8929d3`  
		Last Modified: Mon, 05 Oct 2026 21:52:03 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7376a1e584970fcbef5218fee126765b0e62c8be810624ff21bc6b2b7ecbcfa5`  
		Last Modified: Mon, 05 Oct 2026 21:52:03 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb5d7a52796fd71f62a174f2da1be467ebdd2c2cb5b9561408e287bfe4bb2ec`  
		Last Modified: Mon, 05 Oct 2026 21:52:04 GMT  
		Size: 8.4 MB (8358565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e3b9aa46b872900cdd880db93854c00eda222eda27b778af42f3ca96bcb0f0`  
		Last Modified: Mon, 05 Oct 2026 21:52:03 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
