<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clearlinux`

-	[`clearlinux:base`](#clearlinuxbase)
-	[`clearlinux:latest`](#clearlinuxlatest)

## `clearlinux:base`

```console
$ docker pull clearlinux@sha256:7fe2a50309ab1171e245d2bb2b6b33c4ef28f9eb713c48a95f09607a52fc79b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `clearlinux:base` - linux; amd64

```console
$ docker pull clearlinux@sha256:28e3c1ce164be1033be0b6182a6eb780cb9358e6bc279a71b44d2b39f8536626
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90410802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2577add5e1aa96a723856f18c2e2f1048e099611720fc25953b511049bc4dcc7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 09 Mar 2021 00:22:54 GMT
MAINTAINER William Douglas <william.douglas@intel.com>
# Mon, 23 Jan 2023 19:23:28 GMT
ADD file:9ec36c9fbba5da87ae57ee3f673c9302839fdd07bc62136941ad0410905e6f0b in / 
# Mon, 23 Jan 2023 19:23:29 GMT
RUN cd /etc &&     grep root /usr/share/defaults/etc/passwd > /etc/passwd &&     grep root /usr/share/defaults/etc/group > /etc/group &&     grep root /usr/share/defaults/etc/shadow > /etc/shadow
# Mon, 23 Jan 2023 19:23:29 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ab75a5e7294e520ee5f831edbd70ffbcd95bfb1063d345986931bea7595f6a37`  
		Last Modified: Mon, 23 Jan 2023 19:23:50 GMT  
		Size: 90.4 MB (90410584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba8dda021f50d20a1ae09ddba444d276609f431734c3061e9d0bb9f061b1c1f`  
		Last Modified: Mon, 23 Jan 2023 19:23:38 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clearlinux:latest`

```console
$ docker pull clearlinux@sha256:7fe2a50309ab1171e245d2bb2b6b33c4ef28f9eb713c48a95f09607a52fc79b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `clearlinux:latest` - linux; amd64

```console
$ docker pull clearlinux@sha256:28e3c1ce164be1033be0b6182a6eb780cb9358e6bc279a71b44d2b39f8536626
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90410802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2577add5e1aa96a723856f18c2e2f1048e099611720fc25953b511049bc4dcc7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 09 Mar 2021 00:22:54 GMT
MAINTAINER William Douglas <william.douglas@intel.com>
# Mon, 23 Jan 2023 19:23:28 GMT
ADD file:9ec36c9fbba5da87ae57ee3f673c9302839fdd07bc62136941ad0410905e6f0b in / 
# Mon, 23 Jan 2023 19:23:29 GMT
RUN cd /etc &&     grep root /usr/share/defaults/etc/passwd > /etc/passwd &&     grep root /usr/share/defaults/etc/group > /etc/group &&     grep root /usr/share/defaults/etc/shadow > /etc/shadow
# Mon, 23 Jan 2023 19:23:29 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ab75a5e7294e520ee5f831edbd70ffbcd95bfb1063d345986931bea7595f6a37`  
		Last Modified: Mon, 23 Jan 2023 19:23:50 GMT  
		Size: 90.4 MB (90410584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba8dda021f50d20a1ae09ddba444d276609f431734c3061e9d0bb9f061b1c1f`  
		Last Modified: Mon, 23 Jan 2023 19:23:38 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
