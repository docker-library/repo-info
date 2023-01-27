<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats`

-	[`nats:2`](#nats2)
-	[`nats:2-alpine`](#nats2-alpine)
-	[`nats:2-alpine3.17`](#nats2-alpine317)
-	[`nats:2-linux`](#nats2-linux)
-	[`nats:2-nanoserver`](#nats2-nanoserver)
-	[`nats:2-nanoserver-1809`](#nats2-nanoserver-1809)
-	[`nats:2-scratch`](#nats2-scratch)
-	[`nats:2-windowsservercore`](#nats2-windowsservercore)
-	[`nats:2-windowsservercore-1809`](#nats2-windowsservercore-1809)
-	[`nats:2.9`](#nats29)
-	[`nats:2.9-alpine`](#nats29-alpine)
-	[`nats:2.9-alpine3.17`](#nats29-alpine317)
-	[`nats:2.9-linux`](#nats29-linux)
-	[`nats:2.9-nanoserver`](#nats29-nanoserver)
-	[`nats:2.9-nanoserver-1809`](#nats29-nanoserver-1809)
-	[`nats:2.9-scratch`](#nats29-scratch)
-	[`nats:2.9-windowsservercore`](#nats29-windowsservercore)
-	[`nats:2.9-windowsservercore-1809`](#nats29-windowsservercore-1809)
-	[`nats:2.9.11`](#nats2911)
-	[`nats:2.9.11-alpine`](#nats2911-alpine)
-	[`nats:2.9.11-alpine3.17`](#nats2911-alpine317)
-	[`nats:2.9.11-linux`](#nats2911-linux)
-	[`nats:2.9.11-nanoserver`](#nats2911-nanoserver)
-	[`nats:2.9.11-nanoserver-1809`](#nats2911-nanoserver-1809)
-	[`nats:2.9.11-scratch`](#nats2911-scratch)
-	[`nats:2.9.11-windowsservercore`](#nats2911-windowsservercore)
-	[`nats:2.9.11-windowsservercore-1809`](#nats2911-windowsservercore-1809)
-	[`nats:alpine`](#natsalpine)
-	[`nats:alpine3.17`](#natsalpine317)
-	[`nats:latest`](#natslatest)
-	[`nats:linux`](#natslinux)
-	[`nats:nanoserver`](#natsnanoserver)
-	[`nats:nanoserver-1809`](#natsnanoserver-1809)
-	[`nats:scratch`](#natsscratch)
-	[`nats:windowsservercore`](#natswindowsservercore)
-	[`nats:windowsservercore-1809`](#natswindowsservercore-1809)

## `nats:2`

```console
$ docker pull nats@sha256:af52d6d919884cd7db79b4a1d303d49a1c528e648b093c5e775cbce25320298c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.17763.3887; amd64

### `nats:2` - linux; amd64

```console
$ docker pull nats@sha256:afeb1c1aab2036e50aa6224c94c689511caeeb550eed9ab9bb5858f4911f5503
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc3017edab7b67e29f47c92b56cc34f0f8ebefa6fb8dc0d88c687289b768831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:664b8b57454f3da8850d2d6ef93a053325e8bfd6ac97b3e7eb698f7ab97a8444 in /nats-server 
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:20:20 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:20:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:20:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:20:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5508a75fcd75bf81905bd9dface9fc8d21aadf369f833d008d69b84105e348eb`  
		Last Modified: Fri, 06 Jan 2023 19:21:07 GMT  
		Size: 4.9 MB (4925823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eeb51c6bafbe9123bb07d5a7cce0ca930c05095f5a7e84bd8b18ce00ca863e`  
		Last Modified: Fri, 06 Jan 2023 19:21:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2` - linux; arm variant v6

```console
$ docker pull nats@sha256:f99b07d5eeb8971c80cec3162acdac2900afbbfbef5dc64db1611b3e4fb13e10
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4690616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5e7a92ad51faff09589ae0df91b06d2a55a2b4256f5f90eba2977ecf853a16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:06595cdf8db2d70bfb15c918efe6dd450e02ede2db1bb850d93a2a60bbf27df7 in /nats-server 
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:01:45 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:01:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:01:45 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:01:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:873d4014d51427c81aca5b4db8b1b8a46b3d0815b34cdd333e34677aab4a7ba0`  
		Last Modified: Fri, 06 Jan 2023 19:03:15 GMT  
		Size: 4.7 MB (4690108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a283a79d5f31a899e117ab07ef87b81b7318fc27d705d7113398a1bfb28bb2a`  
		Last Modified: Fri, 06 Jan 2023 19:03:14 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2` - linux; arm variant v7

```console
$ docker pull nats@sha256:455074c66f1b96f45dbea5e8442f68edfb94af657dee605576061781047e582a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4685531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6a8534b65a22d58be02e8984744983e3c96c1f5e4c060dc057d23d8fec24bd`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:5d6035836a154f215ce8e2c0418c0336bca5ac209aa8e275ca48920cc9b3f584 in /nats-server 
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:15:41 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:15:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:15:41 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:15:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a2d610a1a25d4664f94b304a8a8f12e1d4f104226c5002b279d0499c3505a29c`  
		Last Modified: Fri, 06 Jan 2023 19:17:18 GMT  
		Size: 4.7 MB (4685021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bbede3d18d47ba4e57885915c844dc259ebac29270369d6472059f4ab0e666`  
		Last Modified: Fri, 06 Jan 2023 19:17:17 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ffce0cb26fd6677a5ef05b45318360ae20e737bfdc2863d71bae13ec9bc5047b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4512312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f3692328c1caf31688888abde4f682928158ee544d2e3644095c9a2ecf9d16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:19a72664362353bea19dae5d33666206cbba5c7e481270b1ebf62b792b7a49ea in /nats-server 
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 21:38:21 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 21:38:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 21:38:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 21:38:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4b1c65fa290503905ae36006eb2cd6d2df7267f54d65588f85ba20e700586ed6`  
		Last Modified: Fri, 06 Jan 2023 21:39:09 GMT  
		Size: 4.5 MB (4511804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f83ce0dee80eadbf8b49697841b61fb25ace6c9a7682e596eb060a928836a`  
		Last Modified: Fri, 06 Jan 2023 21:39:08 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:e845c21683844f250e9aa1c9a602145a2a9572a2f16a26fe0bc5655a55d4af0a
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111652455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc3e68def26f7bc94494959dd4188d824f4adc0f2798da534fa3ddcb04b31f2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 05:01:53 GMT
RUN cmd /S /C #(nop) COPY file:a4a62c8491380467a4b102dd5a7b3261bb9b459208df8439f078271edc3f0844 in C:\nats-server.exe 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop) COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:56 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe88f4c5f9972ffecb9a66b92e75ddfe48bf7d8d451ace7af3527653f67ff9e`  
		Last Modified: Thu, 12 Jan 2023 05:02:42 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b3a5e5d556eccf6cfe05556fef18ac84d465f8a82399a65f0055b0b02e524d`  
		Last Modified: Thu, 12 Jan 2023 05:02:41 GMT  
		Size: 5.0 MB (4979907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e5b271add881f0846ea8ed8485d3a494756ab7968ab10d87b6755ea98398ea`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f225c3465088ab25475196dda660c9153324a2e5b3102bab279193b89c187`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38285c2672cee4b1652f8079041ee7d960577486bec6faccc7b37e00b1bd47d2`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c11c4acc914f0d02d9e79700023861efef7c59a441fb283993f986ccd119d42`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-alpine`

```console
$ docker pull nats@sha256:ccbe811b85751c1f21315220ea725b9683c776db4f779f25fac6735524122ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:2-alpine` - linux; amd64

```console
$ docker pull nats@sha256:1dd295a7f31f7eb78b3c129af22330e760aa82a0775ad0248c650affc7aebb00
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8585788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2aa27f35c926d598c5c04c23cf06335ced5dc68a66e01d77cf283a9bf862763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:34:19 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:34:22 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:34:22 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:34:22 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadfb97be2c4b396acd5dc611490acf3a27bb9035f500fd74398464a6eb65fca`  
		Last Modified: Mon, 09 Jan 2023 18:34:52 GMT  
		Size: 5.2 MB (5214165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf89eaa7ee5ce3d2515cf4740199f17ff7ed06adcc9d89e5b3fd5db6015a1b`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c489337ee522622a844b9ef1c9436394534cd4a3d84fe9919e16cac43889c6a`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:6a406e6aec03662c20ef72f312ae4c778639e8ee0c6fc7d3577eb34ec6444f0b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8087083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc07d27e7ed9d5250b7bbf5853e8c156377ff78c61fd6d742ecd157a6e8753a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:49:28 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 20:49:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 20:49:34 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 20:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:49:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5afc5e0bddfbfe694403e0d916452f6353d0d35964cb2a64b48716bc2ac9c4b`  
		Last Modified: Mon, 09 Jan 2023 20:50:43 GMT  
		Size: 5.0 MB (4978865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc74b0acbf2bdb4e8dfc71175998ae3ec969b87cef90a55a252394e2324a06d`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 563.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb065bee58d9b8c982b00661f4a502a826ae7e8569f5cea601e7a432d74ceee0`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:c3f54742a5204c7905541fa75a98a4e3b4d935d1743fc86fafca8cb45c690ffa
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7836628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406197ad7c8143a2bc8fcf46e8f6c4e07fccb1ec56a5861635d08f3b36d5e66e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 17:42:55 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 17:42:58 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 17:42:59 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 17:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 17:42:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d73a336145882faccd34809875f895c5656f01fecee5e507eb3f66921153ab`  
		Last Modified: Mon, 09 Jan 2023 17:44:08 GMT  
		Size: 5.0 MB (4970447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a17bb42266b7bab68da86f2509863bd7b0ef2ff9f7394264c43a21e372353c9`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fef1f1b4135d297a1a9a51450652100292d4907e3d8a675c5dea6b564a1d4b2`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:9547980b254de3266558a6ef1df24731f1b81394580999af7f8e0f56ac535b5a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8059465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137eb6cff01cf8a79a84220b858e16f5d6bfcd5d49a33c2e1fb3a600d106ff0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:13:53 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:13:56 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:13:56 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:13:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:13:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5926ad44fb07bd1b6468b934276f66499dd403aaefc7e4a2425eecd6d1d6dee3`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 4.8 MB (4799229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee0a9e6a9ad8eabb0f8a9c119f5396c1e80a46027b3a389592c31355c7292fc`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c2354f9e90a43e060a732dde40a2101e83a9a005c7bc393617a8b1fe1ee5a6`  
		Last Modified: Mon, 09 Jan 2023 18:14:24 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-alpine3.17`

```console
$ docker pull nats@sha256:ccbe811b85751c1f21315220ea725b9683c776db4f779f25fac6735524122ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:2-alpine3.17` - linux; amd64

```console
$ docker pull nats@sha256:1dd295a7f31f7eb78b3c129af22330e760aa82a0775ad0248c650affc7aebb00
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8585788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2aa27f35c926d598c5c04c23cf06335ced5dc68a66e01d77cf283a9bf862763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:34:19 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:34:22 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:34:22 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:34:22 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadfb97be2c4b396acd5dc611490acf3a27bb9035f500fd74398464a6eb65fca`  
		Last Modified: Mon, 09 Jan 2023 18:34:52 GMT  
		Size: 5.2 MB (5214165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf89eaa7ee5ce3d2515cf4740199f17ff7ed06adcc9d89e5b3fd5db6015a1b`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c489337ee522622a844b9ef1c9436394534cd4a3d84fe9919e16cac43889c6a`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2-alpine3.17` - linux; arm variant v6

```console
$ docker pull nats@sha256:6a406e6aec03662c20ef72f312ae4c778639e8ee0c6fc7d3577eb34ec6444f0b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8087083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc07d27e7ed9d5250b7bbf5853e8c156377ff78c61fd6d742ecd157a6e8753a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:49:28 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 20:49:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 20:49:34 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 20:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:49:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5afc5e0bddfbfe694403e0d916452f6353d0d35964cb2a64b48716bc2ac9c4b`  
		Last Modified: Mon, 09 Jan 2023 20:50:43 GMT  
		Size: 5.0 MB (4978865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc74b0acbf2bdb4e8dfc71175998ae3ec969b87cef90a55a252394e2324a06d`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 563.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb065bee58d9b8c982b00661f4a502a826ae7e8569f5cea601e7a432d74ceee0`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2-alpine3.17` - linux; arm variant v7

```console
$ docker pull nats@sha256:c3f54742a5204c7905541fa75a98a4e3b4d935d1743fc86fafca8cb45c690ffa
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7836628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406197ad7c8143a2bc8fcf46e8f6c4e07fccb1ec56a5861635d08f3b36d5e66e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 17:42:55 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 17:42:58 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 17:42:59 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 17:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 17:42:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d73a336145882faccd34809875f895c5656f01fecee5e507eb3f66921153ab`  
		Last Modified: Mon, 09 Jan 2023 17:44:08 GMT  
		Size: 5.0 MB (4970447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a17bb42266b7bab68da86f2509863bd7b0ef2ff9f7394264c43a21e372353c9`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fef1f1b4135d297a1a9a51450652100292d4907e3d8a675c5dea6b564a1d4b2`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2-alpine3.17` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:9547980b254de3266558a6ef1df24731f1b81394580999af7f8e0f56ac535b5a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8059465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137eb6cff01cf8a79a84220b858e16f5d6bfcd5d49a33c2e1fb3a600d106ff0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:13:53 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:13:56 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:13:56 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:13:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:13:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5926ad44fb07bd1b6468b934276f66499dd403aaefc7e4a2425eecd6d1d6dee3`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 4.8 MB (4799229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee0a9e6a9ad8eabb0f8a9c119f5396c1e80a46027b3a389592c31355c7292fc`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c2354f9e90a43e060a732dde40a2101e83a9a005c7bc393617a8b1fe1ee5a6`  
		Last Modified: Mon, 09 Jan 2023 18:14:24 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-linux`

```console
$ docker pull nats@sha256:ea67865b6a98fa17ea12f0daedb488cea79ec21909782099413e37f3eb4b5234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:2-linux` - linux; amd64

```console
$ docker pull nats@sha256:afeb1c1aab2036e50aa6224c94c689511caeeb550eed9ab9bb5858f4911f5503
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc3017edab7b67e29f47c92b56cc34f0f8ebefa6fb8dc0d88c687289b768831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:664b8b57454f3da8850d2d6ef93a053325e8bfd6ac97b3e7eb698f7ab97a8444 in /nats-server 
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:20:20 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:20:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:20:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:20:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5508a75fcd75bf81905bd9dface9fc8d21aadf369f833d008d69b84105e348eb`  
		Last Modified: Fri, 06 Jan 2023 19:21:07 GMT  
		Size: 4.9 MB (4925823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eeb51c6bafbe9123bb07d5a7cce0ca930c05095f5a7e84bd8b18ce00ca863e`  
		Last Modified: Fri, 06 Jan 2023 19:21:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:f99b07d5eeb8971c80cec3162acdac2900afbbfbef5dc64db1611b3e4fb13e10
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4690616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5e7a92ad51faff09589ae0df91b06d2a55a2b4256f5f90eba2977ecf853a16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:06595cdf8db2d70bfb15c918efe6dd450e02ede2db1bb850d93a2a60bbf27df7 in /nats-server 
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:01:45 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:01:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:01:45 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:01:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:873d4014d51427c81aca5b4db8b1b8a46b3d0815b34cdd333e34677aab4a7ba0`  
		Last Modified: Fri, 06 Jan 2023 19:03:15 GMT  
		Size: 4.7 MB (4690108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a283a79d5f31a899e117ab07ef87b81b7318fc27d705d7113398a1bfb28bb2a`  
		Last Modified: Fri, 06 Jan 2023 19:03:14 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:455074c66f1b96f45dbea5e8442f68edfb94af657dee605576061781047e582a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4685531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6a8534b65a22d58be02e8984744983e3c96c1f5e4c060dc057d23d8fec24bd`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:5d6035836a154f215ce8e2c0418c0336bca5ac209aa8e275ca48920cc9b3f584 in /nats-server 
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:15:41 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:15:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:15:41 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:15:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a2d610a1a25d4664f94b304a8a8f12e1d4f104226c5002b279d0499c3505a29c`  
		Last Modified: Fri, 06 Jan 2023 19:17:18 GMT  
		Size: 4.7 MB (4685021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bbede3d18d47ba4e57885915c844dc259ebac29270369d6472059f4ab0e666`  
		Last Modified: Fri, 06 Jan 2023 19:17:17 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ffce0cb26fd6677a5ef05b45318360ae20e737bfdc2863d71bae13ec9bc5047b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4512312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f3692328c1caf31688888abde4f682928158ee544d2e3644095c9a2ecf9d16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:19a72664362353bea19dae5d33666206cbba5c7e481270b1ebf62b792b7a49ea in /nats-server 
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 21:38:21 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 21:38:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 21:38:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 21:38:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4b1c65fa290503905ae36006eb2cd6d2df7267f54d65588f85ba20e700586ed6`  
		Last Modified: Fri, 06 Jan 2023 21:39:09 GMT  
		Size: 4.5 MB (4511804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f83ce0dee80eadbf8b49697841b61fb25ace6c9a7682e596eb060a928836a`  
		Last Modified: Fri, 06 Jan 2023 21:39:08 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-nanoserver`

```console
$ docker pull nats@sha256:07d103bc9407a077b34a4a264ed1cc2ae5f3a0d64e6ac911420cb1f8ca6535d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:2-nanoserver` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:e845c21683844f250e9aa1c9a602145a2a9572a2f16a26fe0bc5655a55d4af0a
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111652455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc3e68def26f7bc94494959dd4188d824f4adc0f2798da534fa3ddcb04b31f2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 05:01:53 GMT
RUN cmd /S /C #(nop) COPY file:a4a62c8491380467a4b102dd5a7b3261bb9b459208df8439f078271edc3f0844 in C:\nats-server.exe 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop) COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:56 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe88f4c5f9972ffecb9a66b92e75ddfe48bf7d8d451ace7af3527653f67ff9e`  
		Last Modified: Thu, 12 Jan 2023 05:02:42 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b3a5e5d556eccf6cfe05556fef18ac84d465f8a82399a65f0055b0b02e524d`  
		Last Modified: Thu, 12 Jan 2023 05:02:41 GMT  
		Size: 5.0 MB (4979907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e5b271add881f0846ea8ed8485d3a494756ab7968ab10d87b6755ea98398ea`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f225c3465088ab25475196dda660c9153324a2e5b3102bab279193b89c187`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38285c2672cee4b1652f8079041ee7d960577486bec6faccc7b37e00b1bd47d2`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c11c4acc914f0d02d9e79700023861efef7c59a441fb283993f986ccd119d42`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-nanoserver-1809`

```console
$ docker pull nats@sha256:07d103bc9407a077b34a4a264ed1cc2ae5f3a0d64e6ac911420cb1f8ca6535d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:2-nanoserver-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:e845c21683844f250e9aa1c9a602145a2a9572a2f16a26fe0bc5655a55d4af0a
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111652455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc3e68def26f7bc94494959dd4188d824f4adc0f2798da534fa3ddcb04b31f2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 05:01:53 GMT
RUN cmd /S /C #(nop) COPY file:a4a62c8491380467a4b102dd5a7b3261bb9b459208df8439f078271edc3f0844 in C:\nats-server.exe 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop) COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:56 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe88f4c5f9972ffecb9a66b92e75ddfe48bf7d8d451ace7af3527653f67ff9e`  
		Last Modified: Thu, 12 Jan 2023 05:02:42 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b3a5e5d556eccf6cfe05556fef18ac84d465f8a82399a65f0055b0b02e524d`  
		Last Modified: Thu, 12 Jan 2023 05:02:41 GMT  
		Size: 5.0 MB (4979907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e5b271add881f0846ea8ed8485d3a494756ab7968ab10d87b6755ea98398ea`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f225c3465088ab25475196dda660c9153324a2e5b3102bab279193b89c187`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38285c2672cee4b1652f8079041ee7d960577486bec6faccc7b37e00b1bd47d2`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c11c4acc914f0d02d9e79700023861efef7c59a441fb283993f986ccd119d42`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-scratch`

```console
$ docker pull nats@sha256:ea67865b6a98fa17ea12f0daedb488cea79ec21909782099413e37f3eb4b5234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:2-scratch` - linux; amd64

```console
$ docker pull nats@sha256:afeb1c1aab2036e50aa6224c94c689511caeeb550eed9ab9bb5858f4911f5503
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc3017edab7b67e29f47c92b56cc34f0f8ebefa6fb8dc0d88c687289b768831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:664b8b57454f3da8850d2d6ef93a053325e8bfd6ac97b3e7eb698f7ab97a8444 in /nats-server 
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:20:20 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:20:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:20:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:20:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5508a75fcd75bf81905bd9dface9fc8d21aadf369f833d008d69b84105e348eb`  
		Last Modified: Fri, 06 Jan 2023 19:21:07 GMT  
		Size: 4.9 MB (4925823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eeb51c6bafbe9123bb07d5a7cce0ca930c05095f5a7e84bd8b18ce00ca863e`  
		Last Modified: Fri, 06 Jan 2023 19:21:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:f99b07d5eeb8971c80cec3162acdac2900afbbfbef5dc64db1611b3e4fb13e10
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4690616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5e7a92ad51faff09589ae0df91b06d2a55a2b4256f5f90eba2977ecf853a16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:06595cdf8db2d70bfb15c918efe6dd450e02ede2db1bb850d93a2a60bbf27df7 in /nats-server 
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:01:45 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:01:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:01:45 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:01:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:873d4014d51427c81aca5b4db8b1b8a46b3d0815b34cdd333e34677aab4a7ba0`  
		Last Modified: Fri, 06 Jan 2023 19:03:15 GMT  
		Size: 4.7 MB (4690108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a283a79d5f31a899e117ab07ef87b81b7318fc27d705d7113398a1bfb28bb2a`  
		Last Modified: Fri, 06 Jan 2023 19:03:14 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:455074c66f1b96f45dbea5e8442f68edfb94af657dee605576061781047e582a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4685531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6a8534b65a22d58be02e8984744983e3c96c1f5e4c060dc057d23d8fec24bd`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:5d6035836a154f215ce8e2c0418c0336bca5ac209aa8e275ca48920cc9b3f584 in /nats-server 
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:15:41 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:15:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:15:41 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:15:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a2d610a1a25d4664f94b304a8a8f12e1d4f104226c5002b279d0499c3505a29c`  
		Last Modified: Fri, 06 Jan 2023 19:17:18 GMT  
		Size: 4.7 MB (4685021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bbede3d18d47ba4e57885915c844dc259ebac29270369d6472059f4ab0e666`  
		Last Modified: Fri, 06 Jan 2023 19:17:17 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ffce0cb26fd6677a5ef05b45318360ae20e737bfdc2863d71bae13ec9bc5047b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4512312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f3692328c1caf31688888abde4f682928158ee544d2e3644095c9a2ecf9d16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:19a72664362353bea19dae5d33666206cbba5c7e481270b1ebf62b792b7a49ea in /nats-server 
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 21:38:21 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 21:38:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 21:38:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 21:38:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4b1c65fa290503905ae36006eb2cd6d2df7267f54d65588f85ba20e700586ed6`  
		Last Modified: Fri, 06 Jan 2023 21:39:09 GMT  
		Size: 4.5 MB (4511804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f83ce0dee80eadbf8b49697841b61fb25ace6c9a7682e596eb060a928836a`  
		Last Modified: Fri, 06 Jan 2023 21:39:08 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-windowsservercore`

```console
$ docker pull nats@sha256:0bda9d973e618a462ccdec401fbd846d4336ea24605e64b486917cf7d016a018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:2-windowsservercore` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:ece5866b528bb5bdbf9e8958db777fa65a67233ae3283a92f7691a2ffdc9a842
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1713633428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35d7bef0ba79b7d72ee6db584417968423e0d6088a49d85acd6191c6063055`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 04:59:53 GMT
ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 04:59:54 GMT
ENV NATS_SERVER=2.9.11
# Thu, 12 Jan 2023 04:59:55 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.9.11/nats-server-v2.9.11-windows-amd64.zip
# Thu, 12 Jan 2023 04:59:56 GMT
ENV NATS_SERVER_SHASUM=f5cc4f7ca32dfe64f2bb35740cf824ddfae52b672c5e2775de3996f7beb6ff78
# Thu, 12 Jan 2023 05:00:26 GMT
RUN Set-PSDebug -Trace 2
# Thu, 12 Jan 2023 05:01:31 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 12 Jan 2023 05:01:32 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:33 GMT
EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:35 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eee4cf5f23d13a762e719b10916801f19f9df4bd7ff9b4c5cf57133b3dc04`  
		Last Modified: Thu, 12 Jan 2023 04:39:02 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda92ec365568291ec0ef873b055a8b13d2c46244c129bc4cdf81f0e43e1ec8c`  
		Last Modified: Thu, 12 Jan 2023 05:02:27 GMT  
		Size: 1.4 KB (1391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea2c4f9d6e01b0d17254eb6d24dfcc737da0eaff0463a7eced9cd2b973b9fbc`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65da24bd53dfcc3fe4a38ad3f9c6b24d36a798352c244e95f89052be76953374`  
		Last Modified: Thu, 12 Jan 2023 05:02:26 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d1b9f80e9924294fbaff42d585569e9b358a5f142809020748bc1f1ed85851`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43cde4ee392ec8de96de11dd08b54286d73af4cf3a9baed08914344b0d319361`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 360.6 KB (360576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b9cc9242ba30713d9e25bc43ff4e5ae4ea68b276a26db66d2259ebb407aa92`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 5.3 MB (5315750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926f4bacf0f2a8430311c6a1db4566ab017b3bc720eb2bf0966148257ead7d76`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 2.0 KB (1966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763a38a06009b6d836d07b3338ff8bfad8034e3d58c3cc2fe66c17e1eb99bc12`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c8efc761da552b19e8157cac2d7406d7bc28d00a3c2d67a03e5d5322b3ce7d`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052cb21e01703ef463517a9c3aa3895dccb7653fcda028d30261f3b3a42eade0`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-windowsservercore-1809`

```console
$ docker pull nats@sha256:0bda9d973e618a462ccdec401fbd846d4336ea24605e64b486917cf7d016a018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:2-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:ece5866b528bb5bdbf9e8958db777fa65a67233ae3283a92f7691a2ffdc9a842
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1713633428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35d7bef0ba79b7d72ee6db584417968423e0d6088a49d85acd6191c6063055`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 04:59:53 GMT
ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 04:59:54 GMT
ENV NATS_SERVER=2.9.11
# Thu, 12 Jan 2023 04:59:55 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.9.11/nats-server-v2.9.11-windows-amd64.zip
# Thu, 12 Jan 2023 04:59:56 GMT
ENV NATS_SERVER_SHASUM=f5cc4f7ca32dfe64f2bb35740cf824ddfae52b672c5e2775de3996f7beb6ff78
# Thu, 12 Jan 2023 05:00:26 GMT
RUN Set-PSDebug -Trace 2
# Thu, 12 Jan 2023 05:01:31 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 12 Jan 2023 05:01:32 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:33 GMT
EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:35 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eee4cf5f23d13a762e719b10916801f19f9df4bd7ff9b4c5cf57133b3dc04`  
		Last Modified: Thu, 12 Jan 2023 04:39:02 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda92ec365568291ec0ef873b055a8b13d2c46244c129bc4cdf81f0e43e1ec8c`  
		Last Modified: Thu, 12 Jan 2023 05:02:27 GMT  
		Size: 1.4 KB (1391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea2c4f9d6e01b0d17254eb6d24dfcc737da0eaff0463a7eced9cd2b973b9fbc`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65da24bd53dfcc3fe4a38ad3f9c6b24d36a798352c244e95f89052be76953374`  
		Last Modified: Thu, 12 Jan 2023 05:02:26 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d1b9f80e9924294fbaff42d585569e9b358a5f142809020748bc1f1ed85851`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43cde4ee392ec8de96de11dd08b54286d73af4cf3a9baed08914344b0d319361`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 360.6 KB (360576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b9cc9242ba30713d9e25bc43ff4e5ae4ea68b276a26db66d2259ebb407aa92`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 5.3 MB (5315750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926f4bacf0f2a8430311c6a1db4566ab017b3bc720eb2bf0966148257ead7d76`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 2.0 KB (1966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763a38a06009b6d836d07b3338ff8bfad8034e3d58c3cc2fe66c17e1eb99bc12`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c8efc761da552b19e8157cac2d7406d7bc28d00a3c2d67a03e5d5322b3ce7d`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052cb21e01703ef463517a9c3aa3895dccb7653fcda028d30261f3b3a42eade0`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9`

```console
$ docker pull nats@sha256:af52d6d919884cd7db79b4a1d303d49a1c528e648b093c5e775cbce25320298c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.17763.3887; amd64

### `nats:2.9` - linux; amd64

```console
$ docker pull nats@sha256:afeb1c1aab2036e50aa6224c94c689511caeeb550eed9ab9bb5858f4911f5503
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc3017edab7b67e29f47c92b56cc34f0f8ebefa6fb8dc0d88c687289b768831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:664b8b57454f3da8850d2d6ef93a053325e8bfd6ac97b3e7eb698f7ab97a8444 in /nats-server 
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:20:20 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:20:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:20:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:20:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5508a75fcd75bf81905bd9dface9fc8d21aadf369f833d008d69b84105e348eb`  
		Last Modified: Fri, 06 Jan 2023 19:21:07 GMT  
		Size: 4.9 MB (4925823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eeb51c6bafbe9123bb07d5a7cce0ca930c05095f5a7e84bd8b18ce00ca863e`  
		Last Modified: Fri, 06 Jan 2023 19:21:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9` - linux; arm variant v6

```console
$ docker pull nats@sha256:f99b07d5eeb8971c80cec3162acdac2900afbbfbef5dc64db1611b3e4fb13e10
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4690616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5e7a92ad51faff09589ae0df91b06d2a55a2b4256f5f90eba2977ecf853a16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:06595cdf8db2d70bfb15c918efe6dd450e02ede2db1bb850d93a2a60bbf27df7 in /nats-server 
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:01:45 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:01:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:01:45 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:01:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:873d4014d51427c81aca5b4db8b1b8a46b3d0815b34cdd333e34677aab4a7ba0`  
		Last Modified: Fri, 06 Jan 2023 19:03:15 GMT  
		Size: 4.7 MB (4690108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a283a79d5f31a899e117ab07ef87b81b7318fc27d705d7113398a1bfb28bb2a`  
		Last Modified: Fri, 06 Jan 2023 19:03:14 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9` - linux; arm variant v7

```console
$ docker pull nats@sha256:455074c66f1b96f45dbea5e8442f68edfb94af657dee605576061781047e582a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4685531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6a8534b65a22d58be02e8984744983e3c96c1f5e4c060dc057d23d8fec24bd`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:5d6035836a154f215ce8e2c0418c0336bca5ac209aa8e275ca48920cc9b3f584 in /nats-server 
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:15:41 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:15:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:15:41 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:15:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a2d610a1a25d4664f94b304a8a8f12e1d4f104226c5002b279d0499c3505a29c`  
		Last Modified: Fri, 06 Jan 2023 19:17:18 GMT  
		Size: 4.7 MB (4685021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bbede3d18d47ba4e57885915c844dc259ebac29270369d6472059f4ab0e666`  
		Last Modified: Fri, 06 Jan 2023 19:17:17 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ffce0cb26fd6677a5ef05b45318360ae20e737bfdc2863d71bae13ec9bc5047b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4512312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f3692328c1caf31688888abde4f682928158ee544d2e3644095c9a2ecf9d16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:19a72664362353bea19dae5d33666206cbba5c7e481270b1ebf62b792b7a49ea in /nats-server 
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 21:38:21 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 21:38:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 21:38:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 21:38:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4b1c65fa290503905ae36006eb2cd6d2df7267f54d65588f85ba20e700586ed6`  
		Last Modified: Fri, 06 Jan 2023 21:39:09 GMT  
		Size: 4.5 MB (4511804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f83ce0dee80eadbf8b49697841b61fb25ace6c9a7682e596eb060a928836a`  
		Last Modified: Fri, 06 Jan 2023 21:39:08 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:e845c21683844f250e9aa1c9a602145a2a9572a2f16a26fe0bc5655a55d4af0a
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111652455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc3e68def26f7bc94494959dd4188d824f4adc0f2798da534fa3ddcb04b31f2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 05:01:53 GMT
RUN cmd /S /C #(nop) COPY file:a4a62c8491380467a4b102dd5a7b3261bb9b459208df8439f078271edc3f0844 in C:\nats-server.exe 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop) COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:56 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe88f4c5f9972ffecb9a66b92e75ddfe48bf7d8d451ace7af3527653f67ff9e`  
		Last Modified: Thu, 12 Jan 2023 05:02:42 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b3a5e5d556eccf6cfe05556fef18ac84d465f8a82399a65f0055b0b02e524d`  
		Last Modified: Thu, 12 Jan 2023 05:02:41 GMT  
		Size: 5.0 MB (4979907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e5b271add881f0846ea8ed8485d3a494756ab7968ab10d87b6755ea98398ea`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f225c3465088ab25475196dda660c9153324a2e5b3102bab279193b89c187`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38285c2672cee4b1652f8079041ee7d960577486bec6faccc7b37e00b1bd47d2`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c11c4acc914f0d02d9e79700023861efef7c59a441fb283993f986ccd119d42`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9-alpine`

```console
$ docker pull nats@sha256:ccbe811b85751c1f21315220ea725b9683c776db4f779f25fac6735524122ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:2.9-alpine` - linux; amd64

```console
$ docker pull nats@sha256:1dd295a7f31f7eb78b3c129af22330e760aa82a0775ad0248c650affc7aebb00
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8585788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2aa27f35c926d598c5c04c23cf06335ced5dc68a66e01d77cf283a9bf862763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:34:19 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:34:22 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:34:22 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:34:22 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadfb97be2c4b396acd5dc611490acf3a27bb9035f500fd74398464a6eb65fca`  
		Last Modified: Mon, 09 Jan 2023 18:34:52 GMT  
		Size: 5.2 MB (5214165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf89eaa7ee5ce3d2515cf4740199f17ff7ed06adcc9d89e5b3fd5db6015a1b`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c489337ee522622a844b9ef1c9436394534cd4a3d84fe9919e16cac43889c6a`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:6a406e6aec03662c20ef72f312ae4c778639e8ee0c6fc7d3577eb34ec6444f0b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8087083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc07d27e7ed9d5250b7bbf5853e8c156377ff78c61fd6d742ecd157a6e8753a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:49:28 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 20:49:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 20:49:34 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 20:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:49:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5afc5e0bddfbfe694403e0d916452f6353d0d35964cb2a64b48716bc2ac9c4b`  
		Last Modified: Mon, 09 Jan 2023 20:50:43 GMT  
		Size: 5.0 MB (4978865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc74b0acbf2bdb4e8dfc71175998ae3ec969b87cef90a55a252394e2324a06d`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 563.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb065bee58d9b8c982b00661f4a502a826ae7e8569f5cea601e7a432d74ceee0`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:c3f54742a5204c7905541fa75a98a4e3b4d935d1743fc86fafca8cb45c690ffa
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7836628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406197ad7c8143a2bc8fcf46e8f6c4e07fccb1ec56a5861635d08f3b36d5e66e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 17:42:55 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 17:42:58 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 17:42:59 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 17:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 17:42:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d73a336145882faccd34809875f895c5656f01fecee5e507eb3f66921153ab`  
		Last Modified: Mon, 09 Jan 2023 17:44:08 GMT  
		Size: 5.0 MB (4970447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a17bb42266b7bab68da86f2509863bd7b0ef2ff9f7394264c43a21e372353c9`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fef1f1b4135d297a1a9a51450652100292d4907e3d8a675c5dea6b564a1d4b2`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:9547980b254de3266558a6ef1df24731f1b81394580999af7f8e0f56ac535b5a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8059465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137eb6cff01cf8a79a84220b858e16f5d6bfcd5d49a33c2e1fb3a600d106ff0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:13:53 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:13:56 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:13:56 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:13:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:13:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5926ad44fb07bd1b6468b934276f66499dd403aaefc7e4a2425eecd6d1d6dee3`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 4.8 MB (4799229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee0a9e6a9ad8eabb0f8a9c119f5396c1e80a46027b3a389592c31355c7292fc`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c2354f9e90a43e060a732dde40a2101e83a9a005c7bc393617a8b1fe1ee5a6`  
		Last Modified: Mon, 09 Jan 2023 18:14:24 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9-alpine3.17`

```console
$ docker pull nats@sha256:ccbe811b85751c1f21315220ea725b9683c776db4f779f25fac6735524122ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:2.9-alpine3.17` - linux; amd64

```console
$ docker pull nats@sha256:1dd295a7f31f7eb78b3c129af22330e760aa82a0775ad0248c650affc7aebb00
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8585788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2aa27f35c926d598c5c04c23cf06335ced5dc68a66e01d77cf283a9bf862763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:34:19 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:34:22 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:34:22 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:34:22 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadfb97be2c4b396acd5dc611490acf3a27bb9035f500fd74398464a6eb65fca`  
		Last Modified: Mon, 09 Jan 2023 18:34:52 GMT  
		Size: 5.2 MB (5214165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf89eaa7ee5ce3d2515cf4740199f17ff7ed06adcc9d89e5b3fd5db6015a1b`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c489337ee522622a844b9ef1c9436394534cd4a3d84fe9919e16cac43889c6a`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9-alpine3.17` - linux; arm variant v6

```console
$ docker pull nats@sha256:6a406e6aec03662c20ef72f312ae4c778639e8ee0c6fc7d3577eb34ec6444f0b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8087083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc07d27e7ed9d5250b7bbf5853e8c156377ff78c61fd6d742ecd157a6e8753a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:49:28 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 20:49:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 20:49:34 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 20:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:49:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5afc5e0bddfbfe694403e0d916452f6353d0d35964cb2a64b48716bc2ac9c4b`  
		Last Modified: Mon, 09 Jan 2023 20:50:43 GMT  
		Size: 5.0 MB (4978865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc74b0acbf2bdb4e8dfc71175998ae3ec969b87cef90a55a252394e2324a06d`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 563.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb065bee58d9b8c982b00661f4a502a826ae7e8569f5cea601e7a432d74ceee0`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9-alpine3.17` - linux; arm variant v7

```console
$ docker pull nats@sha256:c3f54742a5204c7905541fa75a98a4e3b4d935d1743fc86fafca8cb45c690ffa
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7836628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406197ad7c8143a2bc8fcf46e8f6c4e07fccb1ec56a5861635d08f3b36d5e66e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 17:42:55 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 17:42:58 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 17:42:59 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 17:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 17:42:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d73a336145882faccd34809875f895c5656f01fecee5e507eb3f66921153ab`  
		Last Modified: Mon, 09 Jan 2023 17:44:08 GMT  
		Size: 5.0 MB (4970447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a17bb42266b7bab68da86f2509863bd7b0ef2ff9f7394264c43a21e372353c9`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fef1f1b4135d297a1a9a51450652100292d4907e3d8a675c5dea6b564a1d4b2`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9-alpine3.17` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:9547980b254de3266558a6ef1df24731f1b81394580999af7f8e0f56ac535b5a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8059465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137eb6cff01cf8a79a84220b858e16f5d6bfcd5d49a33c2e1fb3a600d106ff0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:13:53 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:13:56 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:13:56 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:13:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:13:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5926ad44fb07bd1b6468b934276f66499dd403aaefc7e4a2425eecd6d1d6dee3`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 4.8 MB (4799229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee0a9e6a9ad8eabb0f8a9c119f5396c1e80a46027b3a389592c31355c7292fc`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c2354f9e90a43e060a732dde40a2101e83a9a005c7bc393617a8b1fe1ee5a6`  
		Last Modified: Mon, 09 Jan 2023 18:14:24 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9-linux`

```console
$ docker pull nats@sha256:ea67865b6a98fa17ea12f0daedb488cea79ec21909782099413e37f3eb4b5234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:2.9-linux` - linux; amd64

```console
$ docker pull nats@sha256:afeb1c1aab2036e50aa6224c94c689511caeeb550eed9ab9bb5858f4911f5503
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc3017edab7b67e29f47c92b56cc34f0f8ebefa6fb8dc0d88c687289b768831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:664b8b57454f3da8850d2d6ef93a053325e8bfd6ac97b3e7eb698f7ab97a8444 in /nats-server 
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:20:20 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:20:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:20:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:20:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5508a75fcd75bf81905bd9dface9fc8d21aadf369f833d008d69b84105e348eb`  
		Last Modified: Fri, 06 Jan 2023 19:21:07 GMT  
		Size: 4.9 MB (4925823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eeb51c6bafbe9123bb07d5a7cce0ca930c05095f5a7e84bd8b18ce00ca863e`  
		Last Modified: Fri, 06 Jan 2023 19:21:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:f99b07d5eeb8971c80cec3162acdac2900afbbfbef5dc64db1611b3e4fb13e10
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4690616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5e7a92ad51faff09589ae0df91b06d2a55a2b4256f5f90eba2977ecf853a16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:06595cdf8db2d70bfb15c918efe6dd450e02ede2db1bb850d93a2a60bbf27df7 in /nats-server 
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:01:45 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:01:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:01:45 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:01:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:873d4014d51427c81aca5b4db8b1b8a46b3d0815b34cdd333e34677aab4a7ba0`  
		Last Modified: Fri, 06 Jan 2023 19:03:15 GMT  
		Size: 4.7 MB (4690108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a283a79d5f31a899e117ab07ef87b81b7318fc27d705d7113398a1bfb28bb2a`  
		Last Modified: Fri, 06 Jan 2023 19:03:14 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:455074c66f1b96f45dbea5e8442f68edfb94af657dee605576061781047e582a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4685531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6a8534b65a22d58be02e8984744983e3c96c1f5e4c060dc057d23d8fec24bd`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:5d6035836a154f215ce8e2c0418c0336bca5ac209aa8e275ca48920cc9b3f584 in /nats-server 
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:15:41 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:15:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:15:41 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:15:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a2d610a1a25d4664f94b304a8a8f12e1d4f104226c5002b279d0499c3505a29c`  
		Last Modified: Fri, 06 Jan 2023 19:17:18 GMT  
		Size: 4.7 MB (4685021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bbede3d18d47ba4e57885915c844dc259ebac29270369d6472059f4ab0e666`  
		Last Modified: Fri, 06 Jan 2023 19:17:17 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ffce0cb26fd6677a5ef05b45318360ae20e737bfdc2863d71bae13ec9bc5047b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4512312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f3692328c1caf31688888abde4f682928158ee544d2e3644095c9a2ecf9d16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:19a72664362353bea19dae5d33666206cbba5c7e481270b1ebf62b792b7a49ea in /nats-server 
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 21:38:21 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 21:38:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 21:38:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 21:38:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4b1c65fa290503905ae36006eb2cd6d2df7267f54d65588f85ba20e700586ed6`  
		Last Modified: Fri, 06 Jan 2023 21:39:09 GMT  
		Size: 4.5 MB (4511804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f83ce0dee80eadbf8b49697841b61fb25ace6c9a7682e596eb060a928836a`  
		Last Modified: Fri, 06 Jan 2023 21:39:08 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9-nanoserver`

```console
$ docker pull nats@sha256:07d103bc9407a077b34a4a264ed1cc2ae5f3a0d64e6ac911420cb1f8ca6535d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:2.9-nanoserver` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:e845c21683844f250e9aa1c9a602145a2a9572a2f16a26fe0bc5655a55d4af0a
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111652455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc3e68def26f7bc94494959dd4188d824f4adc0f2798da534fa3ddcb04b31f2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 05:01:53 GMT
RUN cmd /S /C #(nop) COPY file:a4a62c8491380467a4b102dd5a7b3261bb9b459208df8439f078271edc3f0844 in C:\nats-server.exe 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop) COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:56 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe88f4c5f9972ffecb9a66b92e75ddfe48bf7d8d451ace7af3527653f67ff9e`  
		Last Modified: Thu, 12 Jan 2023 05:02:42 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b3a5e5d556eccf6cfe05556fef18ac84d465f8a82399a65f0055b0b02e524d`  
		Last Modified: Thu, 12 Jan 2023 05:02:41 GMT  
		Size: 5.0 MB (4979907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e5b271add881f0846ea8ed8485d3a494756ab7968ab10d87b6755ea98398ea`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f225c3465088ab25475196dda660c9153324a2e5b3102bab279193b89c187`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38285c2672cee4b1652f8079041ee7d960577486bec6faccc7b37e00b1bd47d2`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c11c4acc914f0d02d9e79700023861efef7c59a441fb283993f986ccd119d42`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9-nanoserver-1809`

```console
$ docker pull nats@sha256:07d103bc9407a077b34a4a264ed1cc2ae5f3a0d64e6ac911420cb1f8ca6535d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:2.9-nanoserver-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:e845c21683844f250e9aa1c9a602145a2a9572a2f16a26fe0bc5655a55d4af0a
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111652455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc3e68def26f7bc94494959dd4188d824f4adc0f2798da534fa3ddcb04b31f2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 05:01:53 GMT
RUN cmd /S /C #(nop) COPY file:a4a62c8491380467a4b102dd5a7b3261bb9b459208df8439f078271edc3f0844 in C:\nats-server.exe 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop) COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:56 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe88f4c5f9972ffecb9a66b92e75ddfe48bf7d8d451ace7af3527653f67ff9e`  
		Last Modified: Thu, 12 Jan 2023 05:02:42 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b3a5e5d556eccf6cfe05556fef18ac84d465f8a82399a65f0055b0b02e524d`  
		Last Modified: Thu, 12 Jan 2023 05:02:41 GMT  
		Size: 5.0 MB (4979907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e5b271add881f0846ea8ed8485d3a494756ab7968ab10d87b6755ea98398ea`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f225c3465088ab25475196dda660c9153324a2e5b3102bab279193b89c187`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38285c2672cee4b1652f8079041ee7d960577486bec6faccc7b37e00b1bd47d2`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c11c4acc914f0d02d9e79700023861efef7c59a441fb283993f986ccd119d42`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9-scratch`

```console
$ docker pull nats@sha256:ea67865b6a98fa17ea12f0daedb488cea79ec21909782099413e37f3eb4b5234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:2.9-scratch` - linux; amd64

```console
$ docker pull nats@sha256:afeb1c1aab2036e50aa6224c94c689511caeeb550eed9ab9bb5858f4911f5503
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc3017edab7b67e29f47c92b56cc34f0f8ebefa6fb8dc0d88c687289b768831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:664b8b57454f3da8850d2d6ef93a053325e8bfd6ac97b3e7eb698f7ab97a8444 in /nats-server 
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:20:20 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:20:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:20:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:20:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5508a75fcd75bf81905bd9dface9fc8d21aadf369f833d008d69b84105e348eb`  
		Last Modified: Fri, 06 Jan 2023 19:21:07 GMT  
		Size: 4.9 MB (4925823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eeb51c6bafbe9123bb07d5a7cce0ca930c05095f5a7e84bd8b18ce00ca863e`  
		Last Modified: Fri, 06 Jan 2023 19:21:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:f99b07d5eeb8971c80cec3162acdac2900afbbfbef5dc64db1611b3e4fb13e10
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4690616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5e7a92ad51faff09589ae0df91b06d2a55a2b4256f5f90eba2977ecf853a16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:06595cdf8db2d70bfb15c918efe6dd450e02ede2db1bb850d93a2a60bbf27df7 in /nats-server 
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:01:45 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:01:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:01:45 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:01:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:873d4014d51427c81aca5b4db8b1b8a46b3d0815b34cdd333e34677aab4a7ba0`  
		Last Modified: Fri, 06 Jan 2023 19:03:15 GMT  
		Size: 4.7 MB (4690108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a283a79d5f31a899e117ab07ef87b81b7318fc27d705d7113398a1bfb28bb2a`  
		Last Modified: Fri, 06 Jan 2023 19:03:14 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:455074c66f1b96f45dbea5e8442f68edfb94af657dee605576061781047e582a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4685531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6a8534b65a22d58be02e8984744983e3c96c1f5e4c060dc057d23d8fec24bd`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:5d6035836a154f215ce8e2c0418c0336bca5ac209aa8e275ca48920cc9b3f584 in /nats-server 
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:15:41 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:15:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:15:41 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:15:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a2d610a1a25d4664f94b304a8a8f12e1d4f104226c5002b279d0499c3505a29c`  
		Last Modified: Fri, 06 Jan 2023 19:17:18 GMT  
		Size: 4.7 MB (4685021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bbede3d18d47ba4e57885915c844dc259ebac29270369d6472059f4ab0e666`  
		Last Modified: Fri, 06 Jan 2023 19:17:17 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ffce0cb26fd6677a5ef05b45318360ae20e737bfdc2863d71bae13ec9bc5047b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4512312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f3692328c1caf31688888abde4f682928158ee544d2e3644095c9a2ecf9d16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:19a72664362353bea19dae5d33666206cbba5c7e481270b1ebf62b792b7a49ea in /nats-server 
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 21:38:21 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 21:38:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 21:38:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 21:38:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4b1c65fa290503905ae36006eb2cd6d2df7267f54d65588f85ba20e700586ed6`  
		Last Modified: Fri, 06 Jan 2023 21:39:09 GMT  
		Size: 4.5 MB (4511804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f83ce0dee80eadbf8b49697841b61fb25ace6c9a7682e596eb060a928836a`  
		Last Modified: Fri, 06 Jan 2023 21:39:08 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9-windowsservercore`

```console
$ docker pull nats@sha256:0bda9d973e618a462ccdec401fbd846d4336ea24605e64b486917cf7d016a018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:2.9-windowsservercore` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:ece5866b528bb5bdbf9e8958db777fa65a67233ae3283a92f7691a2ffdc9a842
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1713633428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35d7bef0ba79b7d72ee6db584417968423e0d6088a49d85acd6191c6063055`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 04:59:53 GMT
ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 04:59:54 GMT
ENV NATS_SERVER=2.9.11
# Thu, 12 Jan 2023 04:59:55 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.9.11/nats-server-v2.9.11-windows-amd64.zip
# Thu, 12 Jan 2023 04:59:56 GMT
ENV NATS_SERVER_SHASUM=f5cc4f7ca32dfe64f2bb35740cf824ddfae52b672c5e2775de3996f7beb6ff78
# Thu, 12 Jan 2023 05:00:26 GMT
RUN Set-PSDebug -Trace 2
# Thu, 12 Jan 2023 05:01:31 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 12 Jan 2023 05:01:32 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:33 GMT
EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:35 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eee4cf5f23d13a762e719b10916801f19f9df4bd7ff9b4c5cf57133b3dc04`  
		Last Modified: Thu, 12 Jan 2023 04:39:02 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda92ec365568291ec0ef873b055a8b13d2c46244c129bc4cdf81f0e43e1ec8c`  
		Last Modified: Thu, 12 Jan 2023 05:02:27 GMT  
		Size: 1.4 KB (1391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea2c4f9d6e01b0d17254eb6d24dfcc737da0eaff0463a7eced9cd2b973b9fbc`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65da24bd53dfcc3fe4a38ad3f9c6b24d36a798352c244e95f89052be76953374`  
		Last Modified: Thu, 12 Jan 2023 05:02:26 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d1b9f80e9924294fbaff42d585569e9b358a5f142809020748bc1f1ed85851`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43cde4ee392ec8de96de11dd08b54286d73af4cf3a9baed08914344b0d319361`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 360.6 KB (360576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b9cc9242ba30713d9e25bc43ff4e5ae4ea68b276a26db66d2259ebb407aa92`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 5.3 MB (5315750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926f4bacf0f2a8430311c6a1db4566ab017b3bc720eb2bf0966148257ead7d76`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 2.0 KB (1966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763a38a06009b6d836d07b3338ff8bfad8034e3d58c3cc2fe66c17e1eb99bc12`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c8efc761da552b19e8157cac2d7406d7bc28d00a3c2d67a03e5d5322b3ce7d`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052cb21e01703ef463517a9c3aa3895dccb7653fcda028d30261f3b3a42eade0`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9-windowsservercore-1809`

```console
$ docker pull nats@sha256:0bda9d973e618a462ccdec401fbd846d4336ea24605e64b486917cf7d016a018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:2.9-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:ece5866b528bb5bdbf9e8958db777fa65a67233ae3283a92f7691a2ffdc9a842
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1713633428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35d7bef0ba79b7d72ee6db584417968423e0d6088a49d85acd6191c6063055`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 04:59:53 GMT
ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 04:59:54 GMT
ENV NATS_SERVER=2.9.11
# Thu, 12 Jan 2023 04:59:55 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.9.11/nats-server-v2.9.11-windows-amd64.zip
# Thu, 12 Jan 2023 04:59:56 GMT
ENV NATS_SERVER_SHASUM=f5cc4f7ca32dfe64f2bb35740cf824ddfae52b672c5e2775de3996f7beb6ff78
# Thu, 12 Jan 2023 05:00:26 GMT
RUN Set-PSDebug -Trace 2
# Thu, 12 Jan 2023 05:01:31 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 12 Jan 2023 05:01:32 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:33 GMT
EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:35 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eee4cf5f23d13a762e719b10916801f19f9df4bd7ff9b4c5cf57133b3dc04`  
		Last Modified: Thu, 12 Jan 2023 04:39:02 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda92ec365568291ec0ef873b055a8b13d2c46244c129bc4cdf81f0e43e1ec8c`  
		Last Modified: Thu, 12 Jan 2023 05:02:27 GMT  
		Size: 1.4 KB (1391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea2c4f9d6e01b0d17254eb6d24dfcc737da0eaff0463a7eced9cd2b973b9fbc`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65da24bd53dfcc3fe4a38ad3f9c6b24d36a798352c244e95f89052be76953374`  
		Last Modified: Thu, 12 Jan 2023 05:02:26 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d1b9f80e9924294fbaff42d585569e9b358a5f142809020748bc1f1ed85851`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43cde4ee392ec8de96de11dd08b54286d73af4cf3a9baed08914344b0d319361`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 360.6 KB (360576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b9cc9242ba30713d9e25bc43ff4e5ae4ea68b276a26db66d2259ebb407aa92`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 5.3 MB (5315750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926f4bacf0f2a8430311c6a1db4566ab017b3bc720eb2bf0966148257ead7d76`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 2.0 KB (1966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763a38a06009b6d836d07b3338ff8bfad8034e3d58c3cc2fe66c17e1eb99bc12`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c8efc761da552b19e8157cac2d7406d7bc28d00a3c2d67a03e5d5322b3ce7d`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052cb21e01703ef463517a9c3aa3895dccb7653fcda028d30261f3b3a42eade0`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9.11`

```console
$ docker pull nats@sha256:af52d6d919884cd7db79b4a1d303d49a1c528e648b093c5e775cbce25320298c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.17763.3887; amd64

### `nats:2.9.11` - linux; amd64

```console
$ docker pull nats@sha256:afeb1c1aab2036e50aa6224c94c689511caeeb550eed9ab9bb5858f4911f5503
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc3017edab7b67e29f47c92b56cc34f0f8ebefa6fb8dc0d88c687289b768831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:664b8b57454f3da8850d2d6ef93a053325e8bfd6ac97b3e7eb698f7ab97a8444 in /nats-server 
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:20:20 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:20:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:20:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:20:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5508a75fcd75bf81905bd9dface9fc8d21aadf369f833d008d69b84105e348eb`  
		Last Modified: Fri, 06 Jan 2023 19:21:07 GMT  
		Size: 4.9 MB (4925823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eeb51c6bafbe9123bb07d5a7cce0ca930c05095f5a7e84bd8b18ce00ca863e`  
		Last Modified: Fri, 06 Jan 2023 19:21:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11` - linux; arm variant v6

```console
$ docker pull nats@sha256:f99b07d5eeb8971c80cec3162acdac2900afbbfbef5dc64db1611b3e4fb13e10
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4690616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5e7a92ad51faff09589ae0df91b06d2a55a2b4256f5f90eba2977ecf853a16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:06595cdf8db2d70bfb15c918efe6dd450e02ede2db1bb850d93a2a60bbf27df7 in /nats-server 
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:01:45 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:01:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:01:45 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:01:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:873d4014d51427c81aca5b4db8b1b8a46b3d0815b34cdd333e34677aab4a7ba0`  
		Last Modified: Fri, 06 Jan 2023 19:03:15 GMT  
		Size: 4.7 MB (4690108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a283a79d5f31a899e117ab07ef87b81b7318fc27d705d7113398a1bfb28bb2a`  
		Last Modified: Fri, 06 Jan 2023 19:03:14 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11` - linux; arm variant v7

```console
$ docker pull nats@sha256:455074c66f1b96f45dbea5e8442f68edfb94af657dee605576061781047e582a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4685531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6a8534b65a22d58be02e8984744983e3c96c1f5e4c060dc057d23d8fec24bd`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:5d6035836a154f215ce8e2c0418c0336bca5ac209aa8e275ca48920cc9b3f584 in /nats-server 
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:15:41 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:15:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:15:41 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:15:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a2d610a1a25d4664f94b304a8a8f12e1d4f104226c5002b279d0499c3505a29c`  
		Last Modified: Fri, 06 Jan 2023 19:17:18 GMT  
		Size: 4.7 MB (4685021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bbede3d18d47ba4e57885915c844dc259ebac29270369d6472059f4ab0e666`  
		Last Modified: Fri, 06 Jan 2023 19:17:17 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ffce0cb26fd6677a5ef05b45318360ae20e737bfdc2863d71bae13ec9bc5047b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4512312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f3692328c1caf31688888abde4f682928158ee544d2e3644095c9a2ecf9d16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:19a72664362353bea19dae5d33666206cbba5c7e481270b1ebf62b792b7a49ea in /nats-server 
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 21:38:21 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 21:38:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 21:38:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 21:38:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4b1c65fa290503905ae36006eb2cd6d2df7267f54d65588f85ba20e700586ed6`  
		Last Modified: Fri, 06 Jan 2023 21:39:09 GMT  
		Size: 4.5 MB (4511804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f83ce0dee80eadbf8b49697841b61fb25ace6c9a7682e596eb060a928836a`  
		Last Modified: Fri, 06 Jan 2023 21:39:08 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:e845c21683844f250e9aa1c9a602145a2a9572a2f16a26fe0bc5655a55d4af0a
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111652455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc3e68def26f7bc94494959dd4188d824f4adc0f2798da534fa3ddcb04b31f2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 05:01:53 GMT
RUN cmd /S /C #(nop) COPY file:a4a62c8491380467a4b102dd5a7b3261bb9b459208df8439f078271edc3f0844 in C:\nats-server.exe 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop) COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:56 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe88f4c5f9972ffecb9a66b92e75ddfe48bf7d8d451ace7af3527653f67ff9e`  
		Last Modified: Thu, 12 Jan 2023 05:02:42 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b3a5e5d556eccf6cfe05556fef18ac84d465f8a82399a65f0055b0b02e524d`  
		Last Modified: Thu, 12 Jan 2023 05:02:41 GMT  
		Size: 5.0 MB (4979907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e5b271add881f0846ea8ed8485d3a494756ab7968ab10d87b6755ea98398ea`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f225c3465088ab25475196dda660c9153324a2e5b3102bab279193b89c187`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38285c2672cee4b1652f8079041ee7d960577486bec6faccc7b37e00b1bd47d2`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c11c4acc914f0d02d9e79700023861efef7c59a441fb283993f986ccd119d42`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9.11-alpine`

```console
$ docker pull nats@sha256:ccbe811b85751c1f21315220ea725b9683c776db4f779f25fac6735524122ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:2.9.11-alpine` - linux; amd64

```console
$ docker pull nats@sha256:1dd295a7f31f7eb78b3c129af22330e760aa82a0775ad0248c650affc7aebb00
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8585788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2aa27f35c926d598c5c04c23cf06335ced5dc68a66e01d77cf283a9bf862763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:34:19 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:34:22 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:34:22 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:34:22 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadfb97be2c4b396acd5dc611490acf3a27bb9035f500fd74398464a6eb65fca`  
		Last Modified: Mon, 09 Jan 2023 18:34:52 GMT  
		Size: 5.2 MB (5214165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf89eaa7ee5ce3d2515cf4740199f17ff7ed06adcc9d89e5b3fd5db6015a1b`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c489337ee522622a844b9ef1c9436394534cd4a3d84fe9919e16cac43889c6a`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:6a406e6aec03662c20ef72f312ae4c778639e8ee0c6fc7d3577eb34ec6444f0b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8087083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc07d27e7ed9d5250b7bbf5853e8c156377ff78c61fd6d742ecd157a6e8753a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:49:28 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 20:49:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 20:49:34 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 20:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:49:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5afc5e0bddfbfe694403e0d916452f6353d0d35964cb2a64b48716bc2ac9c4b`  
		Last Modified: Mon, 09 Jan 2023 20:50:43 GMT  
		Size: 5.0 MB (4978865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc74b0acbf2bdb4e8dfc71175998ae3ec969b87cef90a55a252394e2324a06d`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 563.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb065bee58d9b8c982b00661f4a502a826ae7e8569f5cea601e7a432d74ceee0`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:c3f54742a5204c7905541fa75a98a4e3b4d935d1743fc86fafca8cb45c690ffa
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7836628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406197ad7c8143a2bc8fcf46e8f6c4e07fccb1ec56a5861635d08f3b36d5e66e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 17:42:55 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 17:42:58 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 17:42:59 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 17:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 17:42:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d73a336145882faccd34809875f895c5656f01fecee5e507eb3f66921153ab`  
		Last Modified: Mon, 09 Jan 2023 17:44:08 GMT  
		Size: 5.0 MB (4970447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a17bb42266b7bab68da86f2509863bd7b0ef2ff9f7394264c43a21e372353c9`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fef1f1b4135d297a1a9a51450652100292d4907e3d8a675c5dea6b564a1d4b2`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:9547980b254de3266558a6ef1df24731f1b81394580999af7f8e0f56ac535b5a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8059465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137eb6cff01cf8a79a84220b858e16f5d6bfcd5d49a33c2e1fb3a600d106ff0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:13:53 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:13:56 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:13:56 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:13:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:13:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5926ad44fb07bd1b6468b934276f66499dd403aaefc7e4a2425eecd6d1d6dee3`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 4.8 MB (4799229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee0a9e6a9ad8eabb0f8a9c119f5396c1e80a46027b3a389592c31355c7292fc`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c2354f9e90a43e060a732dde40a2101e83a9a005c7bc393617a8b1fe1ee5a6`  
		Last Modified: Mon, 09 Jan 2023 18:14:24 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9.11-alpine3.17`

```console
$ docker pull nats@sha256:ccbe811b85751c1f21315220ea725b9683c776db4f779f25fac6735524122ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:2.9.11-alpine3.17` - linux; amd64

```console
$ docker pull nats@sha256:1dd295a7f31f7eb78b3c129af22330e760aa82a0775ad0248c650affc7aebb00
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8585788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2aa27f35c926d598c5c04c23cf06335ced5dc68a66e01d77cf283a9bf862763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:34:19 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:34:22 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:34:22 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:34:22 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadfb97be2c4b396acd5dc611490acf3a27bb9035f500fd74398464a6eb65fca`  
		Last Modified: Mon, 09 Jan 2023 18:34:52 GMT  
		Size: 5.2 MB (5214165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf89eaa7ee5ce3d2515cf4740199f17ff7ed06adcc9d89e5b3fd5db6015a1b`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c489337ee522622a844b9ef1c9436394534cd4a3d84fe9919e16cac43889c6a`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11-alpine3.17` - linux; arm variant v6

```console
$ docker pull nats@sha256:6a406e6aec03662c20ef72f312ae4c778639e8ee0c6fc7d3577eb34ec6444f0b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8087083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc07d27e7ed9d5250b7bbf5853e8c156377ff78c61fd6d742ecd157a6e8753a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:49:28 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 20:49:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 20:49:34 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 20:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:49:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5afc5e0bddfbfe694403e0d916452f6353d0d35964cb2a64b48716bc2ac9c4b`  
		Last Modified: Mon, 09 Jan 2023 20:50:43 GMT  
		Size: 5.0 MB (4978865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc74b0acbf2bdb4e8dfc71175998ae3ec969b87cef90a55a252394e2324a06d`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 563.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb065bee58d9b8c982b00661f4a502a826ae7e8569f5cea601e7a432d74ceee0`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11-alpine3.17` - linux; arm variant v7

```console
$ docker pull nats@sha256:c3f54742a5204c7905541fa75a98a4e3b4d935d1743fc86fafca8cb45c690ffa
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7836628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406197ad7c8143a2bc8fcf46e8f6c4e07fccb1ec56a5861635d08f3b36d5e66e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 17:42:55 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 17:42:58 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 17:42:59 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 17:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 17:42:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d73a336145882faccd34809875f895c5656f01fecee5e507eb3f66921153ab`  
		Last Modified: Mon, 09 Jan 2023 17:44:08 GMT  
		Size: 5.0 MB (4970447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a17bb42266b7bab68da86f2509863bd7b0ef2ff9f7394264c43a21e372353c9`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fef1f1b4135d297a1a9a51450652100292d4907e3d8a675c5dea6b564a1d4b2`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11-alpine3.17` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:9547980b254de3266558a6ef1df24731f1b81394580999af7f8e0f56ac535b5a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8059465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137eb6cff01cf8a79a84220b858e16f5d6bfcd5d49a33c2e1fb3a600d106ff0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:13:53 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:13:56 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:13:56 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:13:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:13:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5926ad44fb07bd1b6468b934276f66499dd403aaefc7e4a2425eecd6d1d6dee3`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 4.8 MB (4799229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee0a9e6a9ad8eabb0f8a9c119f5396c1e80a46027b3a389592c31355c7292fc`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c2354f9e90a43e060a732dde40a2101e83a9a005c7bc393617a8b1fe1ee5a6`  
		Last Modified: Mon, 09 Jan 2023 18:14:24 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9.11-linux`

```console
$ docker pull nats@sha256:ea67865b6a98fa17ea12f0daedb488cea79ec21909782099413e37f3eb4b5234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:2.9.11-linux` - linux; amd64

```console
$ docker pull nats@sha256:afeb1c1aab2036e50aa6224c94c689511caeeb550eed9ab9bb5858f4911f5503
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc3017edab7b67e29f47c92b56cc34f0f8ebefa6fb8dc0d88c687289b768831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:664b8b57454f3da8850d2d6ef93a053325e8bfd6ac97b3e7eb698f7ab97a8444 in /nats-server 
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:20:20 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:20:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:20:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:20:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5508a75fcd75bf81905bd9dface9fc8d21aadf369f833d008d69b84105e348eb`  
		Last Modified: Fri, 06 Jan 2023 19:21:07 GMT  
		Size: 4.9 MB (4925823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eeb51c6bafbe9123bb07d5a7cce0ca930c05095f5a7e84bd8b18ce00ca863e`  
		Last Modified: Fri, 06 Jan 2023 19:21:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:f99b07d5eeb8971c80cec3162acdac2900afbbfbef5dc64db1611b3e4fb13e10
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4690616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5e7a92ad51faff09589ae0df91b06d2a55a2b4256f5f90eba2977ecf853a16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:06595cdf8db2d70bfb15c918efe6dd450e02ede2db1bb850d93a2a60bbf27df7 in /nats-server 
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:01:45 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:01:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:01:45 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:01:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:873d4014d51427c81aca5b4db8b1b8a46b3d0815b34cdd333e34677aab4a7ba0`  
		Last Modified: Fri, 06 Jan 2023 19:03:15 GMT  
		Size: 4.7 MB (4690108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a283a79d5f31a899e117ab07ef87b81b7318fc27d705d7113398a1bfb28bb2a`  
		Last Modified: Fri, 06 Jan 2023 19:03:14 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:455074c66f1b96f45dbea5e8442f68edfb94af657dee605576061781047e582a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4685531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6a8534b65a22d58be02e8984744983e3c96c1f5e4c060dc057d23d8fec24bd`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:5d6035836a154f215ce8e2c0418c0336bca5ac209aa8e275ca48920cc9b3f584 in /nats-server 
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:15:41 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:15:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:15:41 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:15:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a2d610a1a25d4664f94b304a8a8f12e1d4f104226c5002b279d0499c3505a29c`  
		Last Modified: Fri, 06 Jan 2023 19:17:18 GMT  
		Size: 4.7 MB (4685021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bbede3d18d47ba4e57885915c844dc259ebac29270369d6472059f4ab0e666`  
		Last Modified: Fri, 06 Jan 2023 19:17:17 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ffce0cb26fd6677a5ef05b45318360ae20e737bfdc2863d71bae13ec9bc5047b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4512312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f3692328c1caf31688888abde4f682928158ee544d2e3644095c9a2ecf9d16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:19a72664362353bea19dae5d33666206cbba5c7e481270b1ebf62b792b7a49ea in /nats-server 
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 21:38:21 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 21:38:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 21:38:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 21:38:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4b1c65fa290503905ae36006eb2cd6d2df7267f54d65588f85ba20e700586ed6`  
		Last Modified: Fri, 06 Jan 2023 21:39:09 GMT  
		Size: 4.5 MB (4511804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f83ce0dee80eadbf8b49697841b61fb25ace6c9a7682e596eb060a928836a`  
		Last Modified: Fri, 06 Jan 2023 21:39:08 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9.11-nanoserver`

```console
$ docker pull nats@sha256:07d103bc9407a077b34a4a264ed1cc2ae5f3a0d64e6ac911420cb1f8ca6535d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:2.9.11-nanoserver` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:e845c21683844f250e9aa1c9a602145a2a9572a2f16a26fe0bc5655a55d4af0a
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111652455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc3e68def26f7bc94494959dd4188d824f4adc0f2798da534fa3ddcb04b31f2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 05:01:53 GMT
RUN cmd /S /C #(nop) COPY file:a4a62c8491380467a4b102dd5a7b3261bb9b459208df8439f078271edc3f0844 in C:\nats-server.exe 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop) COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:56 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe88f4c5f9972ffecb9a66b92e75ddfe48bf7d8d451ace7af3527653f67ff9e`  
		Last Modified: Thu, 12 Jan 2023 05:02:42 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b3a5e5d556eccf6cfe05556fef18ac84d465f8a82399a65f0055b0b02e524d`  
		Last Modified: Thu, 12 Jan 2023 05:02:41 GMT  
		Size: 5.0 MB (4979907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e5b271add881f0846ea8ed8485d3a494756ab7968ab10d87b6755ea98398ea`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f225c3465088ab25475196dda660c9153324a2e5b3102bab279193b89c187`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38285c2672cee4b1652f8079041ee7d960577486bec6faccc7b37e00b1bd47d2`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c11c4acc914f0d02d9e79700023861efef7c59a441fb283993f986ccd119d42`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9.11-nanoserver-1809`

```console
$ docker pull nats@sha256:07d103bc9407a077b34a4a264ed1cc2ae5f3a0d64e6ac911420cb1f8ca6535d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:2.9.11-nanoserver-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:e845c21683844f250e9aa1c9a602145a2a9572a2f16a26fe0bc5655a55d4af0a
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111652455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc3e68def26f7bc94494959dd4188d824f4adc0f2798da534fa3ddcb04b31f2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 05:01:53 GMT
RUN cmd /S /C #(nop) COPY file:a4a62c8491380467a4b102dd5a7b3261bb9b459208df8439f078271edc3f0844 in C:\nats-server.exe 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop) COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:56 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe88f4c5f9972ffecb9a66b92e75ddfe48bf7d8d451ace7af3527653f67ff9e`  
		Last Modified: Thu, 12 Jan 2023 05:02:42 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b3a5e5d556eccf6cfe05556fef18ac84d465f8a82399a65f0055b0b02e524d`  
		Last Modified: Thu, 12 Jan 2023 05:02:41 GMT  
		Size: 5.0 MB (4979907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e5b271add881f0846ea8ed8485d3a494756ab7968ab10d87b6755ea98398ea`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f225c3465088ab25475196dda660c9153324a2e5b3102bab279193b89c187`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38285c2672cee4b1652f8079041ee7d960577486bec6faccc7b37e00b1bd47d2`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c11c4acc914f0d02d9e79700023861efef7c59a441fb283993f986ccd119d42`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9.11-scratch`

```console
$ docker pull nats@sha256:ea67865b6a98fa17ea12f0daedb488cea79ec21909782099413e37f3eb4b5234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:2.9.11-scratch` - linux; amd64

```console
$ docker pull nats@sha256:afeb1c1aab2036e50aa6224c94c689511caeeb550eed9ab9bb5858f4911f5503
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc3017edab7b67e29f47c92b56cc34f0f8ebefa6fb8dc0d88c687289b768831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:664b8b57454f3da8850d2d6ef93a053325e8bfd6ac97b3e7eb698f7ab97a8444 in /nats-server 
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:20:20 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:20:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:20:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:20:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5508a75fcd75bf81905bd9dface9fc8d21aadf369f833d008d69b84105e348eb`  
		Last Modified: Fri, 06 Jan 2023 19:21:07 GMT  
		Size: 4.9 MB (4925823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eeb51c6bafbe9123bb07d5a7cce0ca930c05095f5a7e84bd8b18ce00ca863e`  
		Last Modified: Fri, 06 Jan 2023 19:21:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:f99b07d5eeb8971c80cec3162acdac2900afbbfbef5dc64db1611b3e4fb13e10
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4690616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5e7a92ad51faff09589ae0df91b06d2a55a2b4256f5f90eba2977ecf853a16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:06595cdf8db2d70bfb15c918efe6dd450e02ede2db1bb850d93a2a60bbf27df7 in /nats-server 
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:01:45 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:01:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:01:45 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:01:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:873d4014d51427c81aca5b4db8b1b8a46b3d0815b34cdd333e34677aab4a7ba0`  
		Last Modified: Fri, 06 Jan 2023 19:03:15 GMT  
		Size: 4.7 MB (4690108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a283a79d5f31a899e117ab07ef87b81b7318fc27d705d7113398a1bfb28bb2a`  
		Last Modified: Fri, 06 Jan 2023 19:03:14 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:455074c66f1b96f45dbea5e8442f68edfb94af657dee605576061781047e582a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4685531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6a8534b65a22d58be02e8984744983e3c96c1f5e4c060dc057d23d8fec24bd`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:5d6035836a154f215ce8e2c0418c0336bca5ac209aa8e275ca48920cc9b3f584 in /nats-server 
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:15:41 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:15:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:15:41 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:15:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a2d610a1a25d4664f94b304a8a8f12e1d4f104226c5002b279d0499c3505a29c`  
		Last Modified: Fri, 06 Jan 2023 19:17:18 GMT  
		Size: 4.7 MB (4685021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bbede3d18d47ba4e57885915c844dc259ebac29270369d6472059f4ab0e666`  
		Last Modified: Fri, 06 Jan 2023 19:17:17 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.9.11-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ffce0cb26fd6677a5ef05b45318360ae20e737bfdc2863d71bae13ec9bc5047b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4512312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f3692328c1caf31688888abde4f682928158ee544d2e3644095c9a2ecf9d16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:19a72664362353bea19dae5d33666206cbba5c7e481270b1ebf62b792b7a49ea in /nats-server 
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 21:38:21 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 21:38:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 21:38:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 21:38:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4b1c65fa290503905ae36006eb2cd6d2df7267f54d65588f85ba20e700586ed6`  
		Last Modified: Fri, 06 Jan 2023 21:39:09 GMT  
		Size: 4.5 MB (4511804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f83ce0dee80eadbf8b49697841b61fb25ace6c9a7682e596eb060a928836a`  
		Last Modified: Fri, 06 Jan 2023 21:39:08 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9.11-windowsservercore`

```console
$ docker pull nats@sha256:0bda9d973e618a462ccdec401fbd846d4336ea24605e64b486917cf7d016a018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:2.9.11-windowsservercore` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:ece5866b528bb5bdbf9e8958db777fa65a67233ae3283a92f7691a2ffdc9a842
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1713633428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35d7bef0ba79b7d72ee6db584417968423e0d6088a49d85acd6191c6063055`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 04:59:53 GMT
ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 04:59:54 GMT
ENV NATS_SERVER=2.9.11
# Thu, 12 Jan 2023 04:59:55 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.9.11/nats-server-v2.9.11-windows-amd64.zip
# Thu, 12 Jan 2023 04:59:56 GMT
ENV NATS_SERVER_SHASUM=f5cc4f7ca32dfe64f2bb35740cf824ddfae52b672c5e2775de3996f7beb6ff78
# Thu, 12 Jan 2023 05:00:26 GMT
RUN Set-PSDebug -Trace 2
# Thu, 12 Jan 2023 05:01:31 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 12 Jan 2023 05:01:32 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:33 GMT
EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:35 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eee4cf5f23d13a762e719b10916801f19f9df4bd7ff9b4c5cf57133b3dc04`  
		Last Modified: Thu, 12 Jan 2023 04:39:02 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda92ec365568291ec0ef873b055a8b13d2c46244c129bc4cdf81f0e43e1ec8c`  
		Last Modified: Thu, 12 Jan 2023 05:02:27 GMT  
		Size: 1.4 KB (1391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea2c4f9d6e01b0d17254eb6d24dfcc737da0eaff0463a7eced9cd2b973b9fbc`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65da24bd53dfcc3fe4a38ad3f9c6b24d36a798352c244e95f89052be76953374`  
		Last Modified: Thu, 12 Jan 2023 05:02:26 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d1b9f80e9924294fbaff42d585569e9b358a5f142809020748bc1f1ed85851`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43cde4ee392ec8de96de11dd08b54286d73af4cf3a9baed08914344b0d319361`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 360.6 KB (360576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b9cc9242ba30713d9e25bc43ff4e5ae4ea68b276a26db66d2259ebb407aa92`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 5.3 MB (5315750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926f4bacf0f2a8430311c6a1db4566ab017b3bc720eb2bf0966148257ead7d76`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 2.0 KB (1966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763a38a06009b6d836d07b3338ff8bfad8034e3d58c3cc2fe66c17e1eb99bc12`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c8efc761da552b19e8157cac2d7406d7bc28d00a3c2d67a03e5d5322b3ce7d`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052cb21e01703ef463517a9c3aa3895dccb7653fcda028d30261f3b3a42eade0`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.9.11-windowsservercore-1809`

```console
$ docker pull nats@sha256:0bda9d973e618a462ccdec401fbd846d4336ea24605e64b486917cf7d016a018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:2.9.11-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:ece5866b528bb5bdbf9e8958db777fa65a67233ae3283a92f7691a2ffdc9a842
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1713633428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35d7bef0ba79b7d72ee6db584417968423e0d6088a49d85acd6191c6063055`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 04:59:53 GMT
ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 04:59:54 GMT
ENV NATS_SERVER=2.9.11
# Thu, 12 Jan 2023 04:59:55 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.9.11/nats-server-v2.9.11-windows-amd64.zip
# Thu, 12 Jan 2023 04:59:56 GMT
ENV NATS_SERVER_SHASUM=f5cc4f7ca32dfe64f2bb35740cf824ddfae52b672c5e2775de3996f7beb6ff78
# Thu, 12 Jan 2023 05:00:26 GMT
RUN Set-PSDebug -Trace 2
# Thu, 12 Jan 2023 05:01:31 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 12 Jan 2023 05:01:32 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:33 GMT
EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:35 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eee4cf5f23d13a762e719b10916801f19f9df4bd7ff9b4c5cf57133b3dc04`  
		Last Modified: Thu, 12 Jan 2023 04:39:02 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda92ec365568291ec0ef873b055a8b13d2c46244c129bc4cdf81f0e43e1ec8c`  
		Last Modified: Thu, 12 Jan 2023 05:02:27 GMT  
		Size: 1.4 KB (1391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea2c4f9d6e01b0d17254eb6d24dfcc737da0eaff0463a7eced9cd2b973b9fbc`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65da24bd53dfcc3fe4a38ad3f9c6b24d36a798352c244e95f89052be76953374`  
		Last Modified: Thu, 12 Jan 2023 05:02:26 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d1b9f80e9924294fbaff42d585569e9b358a5f142809020748bc1f1ed85851`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43cde4ee392ec8de96de11dd08b54286d73af4cf3a9baed08914344b0d319361`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 360.6 KB (360576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b9cc9242ba30713d9e25bc43ff4e5ae4ea68b276a26db66d2259ebb407aa92`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 5.3 MB (5315750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926f4bacf0f2a8430311c6a1db4566ab017b3bc720eb2bf0966148257ead7d76`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 2.0 KB (1966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763a38a06009b6d836d07b3338ff8bfad8034e3d58c3cc2fe66c17e1eb99bc12`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c8efc761da552b19e8157cac2d7406d7bc28d00a3c2d67a03e5d5322b3ce7d`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052cb21e01703ef463517a9c3aa3895dccb7653fcda028d30261f3b3a42eade0`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:alpine`

```console
$ docker pull nats@sha256:ccbe811b85751c1f21315220ea725b9683c776db4f779f25fac6735524122ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:alpine` - linux; amd64

```console
$ docker pull nats@sha256:1dd295a7f31f7eb78b3c129af22330e760aa82a0775ad0248c650affc7aebb00
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8585788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2aa27f35c926d598c5c04c23cf06335ced5dc68a66e01d77cf283a9bf862763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:34:19 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:34:22 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:34:22 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:34:22 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadfb97be2c4b396acd5dc611490acf3a27bb9035f500fd74398464a6eb65fca`  
		Last Modified: Mon, 09 Jan 2023 18:34:52 GMT  
		Size: 5.2 MB (5214165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf89eaa7ee5ce3d2515cf4740199f17ff7ed06adcc9d89e5b3fd5db6015a1b`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c489337ee522622a844b9ef1c9436394534cd4a3d84fe9919e16cac43889c6a`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:6a406e6aec03662c20ef72f312ae4c778639e8ee0c6fc7d3577eb34ec6444f0b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8087083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc07d27e7ed9d5250b7bbf5853e8c156377ff78c61fd6d742ecd157a6e8753a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:49:28 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 20:49:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 20:49:34 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 20:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:49:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5afc5e0bddfbfe694403e0d916452f6353d0d35964cb2a64b48716bc2ac9c4b`  
		Last Modified: Mon, 09 Jan 2023 20:50:43 GMT  
		Size: 5.0 MB (4978865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc74b0acbf2bdb4e8dfc71175998ae3ec969b87cef90a55a252394e2324a06d`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 563.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb065bee58d9b8c982b00661f4a502a826ae7e8569f5cea601e7a432d74ceee0`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:c3f54742a5204c7905541fa75a98a4e3b4d935d1743fc86fafca8cb45c690ffa
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7836628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406197ad7c8143a2bc8fcf46e8f6c4e07fccb1ec56a5861635d08f3b36d5e66e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 17:42:55 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 17:42:58 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 17:42:59 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 17:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 17:42:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d73a336145882faccd34809875f895c5656f01fecee5e507eb3f66921153ab`  
		Last Modified: Mon, 09 Jan 2023 17:44:08 GMT  
		Size: 5.0 MB (4970447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a17bb42266b7bab68da86f2509863bd7b0ef2ff9f7394264c43a21e372353c9`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fef1f1b4135d297a1a9a51450652100292d4907e3d8a675c5dea6b564a1d4b2`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:9547980b254de3266558a6ef1df24731f1b81394580999af7f8e0f56ac535b5a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8059465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137eb6cff01cf8a79a84220b858e16f5d6bfcd5d49a33c2e1fb3a600d106ff0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:13:53 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:13:56 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:13:56 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:13:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:13:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5926ad44fb07bd1b6468b934276f66499dd403aaefc7e4a2425eecd6d1d6dee3`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 4.8 MB (4799229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee0a9e6a9ad8eabb0f8a9c119f5396c1e80a46027b3a389592c31355c7292fc`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c2354f9e90a43e060a732dde40a2101e83a9a005c7bc393617a8b1fe1ee5a6`  
		Last Modified: Mon, 09 Jan 2023 18:14:24 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:alpine3.17`

```console
$ docker pull nats@sha256:ccbe811b85751c1f21315220ea725b9683c776db4f779f25fac6735524122ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:alpine3.17` - linux; amd64

```console
$ docker pull nats@sha256:1dd295a7f31f7eb78b3c129af22330e760aa82a0775ad0248c650affc7aebb00
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8585788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2aa27f35c926d598c5c04c23cf06335ced5dc68a66e01d77cf283a9bf862763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:34:19 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:34:22 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:34:22 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:34:22 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:34:22 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadfb97be2c4b396acd5dc611490acf3a27bb9035f500fd74398464a6eb65fca`  
		Last Modified: Mon, 09 Jan 2023 18:34:52 GMT  
		Size: 5.2 MB (5214165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf89eaa7ee5ce3d2515cf4740199f17ff7ed06adcc9d89e5b3fd5db6015a1b`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c489337ee522622a844b9ef1c9436394534cd4a3d84fe9919e16cac43889c6a`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:alpine3.17` - linux; arm variant v6

```console
$ docker pull nats@sha256:6a406e6aec03662c20ef72f312ae4c778639e8ee0c6fc7d3577eb34ec6444f0b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8087083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc07d27e7ed9d5250b7bbf5853e8c156377ff78c61fd6d742ecd157a6e8753a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:49:28 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 20:49:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 20:49:33 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 20:49:34 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 20:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:49:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5afc5e0bddfbfe694403e0d916452f6353d0d35964cb2a64b48716bc2ac9c4b`  
		Last Modified: Mon, 09 Jan 2023 20:50:43 GMT  
		Size: 5.0 MB (4978865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc74b0acbf2bdb4e8dfc71175998ae3ec969b87cef90a55a252394e2324a06d`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 563.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb065bee58d9b8c982b00661f4a502a826ae7e8569f5cea601e7a432d74ceee0`  
		Last Modified: Mon, 09 Jan 2023 20:50:42 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:alpine3.17` - linux; arm variant v7

```console
$ docker pull nats@sha256:c3f54742a5204c7905541fa75a98a4e3b4d935d1743fc86fafca8cb45c690ffa
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7836628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406197ad7c8143a2bc8fcf46e8f6c4e07fccb1ec56a5861635d08f3b36d5e66e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 17:42:55 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 17:42:58 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 17:42:58 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 17:42:59 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 17:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 17:42:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d73a336145882faccd34809875f895c5656f01fecee5e507eb3f66921153ab`  
		Last Modified: Mon, 09 Jan 2023 17:44:08 GMT  
		Size: 5.0 MB (4970447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a17bb42266b7bab68da86f2509863bd7b0ef2ff9f7394264c43a21e372353c9`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fef1f1b4135d297a1a9a51450652100292d4907e3d8a675c5dea6b564a1d4b2`  
		Last Modified: Mon, 09 Jan 2023 17:44:07 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:alpine3.17` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:9547980b254de3266558a6ef1df24731f1b81394580999af7f8e0f56ac535b5a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8059465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137eb6cff01cf8a79a84220b858e16f5d6bfcd5d49a33c2e1fb3a600d106ff0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:13:53 GMT
ENV NATS_SERVER=2.9.11
# Mon, 09 Jan 2023 18:13:56 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='0ff6e07f5cf211b643395132f63a69d69f0ed85ddcefd292b150574392e75edb' ;; 		armhf) natsArch='arm6'; sha256='d2c58d51c5050582ec1888107a6eea041745b287548a37e27569437a4725c3ed' ;; 		armv7) natsArch='arm7'; sha256='cef33d5b84473050e3dc0143117e336e90853e33d6329847612db88a1b8b139f' ;; 		x86_64) natsArch='amd64'; sha256='7491944084cd0128c1ddf9a313095817a2c558b0911581c98e65b84779110856' ;; 		x86) natsArch='386'; sha256='510eb4e4a32f1feba76232187767dd8ff0e021593f1cfbb6c5646343f3ca7a68' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-server.tar.gz; 	rm nats-server.tar.gz; 	mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin; 	rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}";
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /etc/nats/nats-server.conf 
# Mon, 09 Jan 2023 18:13:56 GMT
COPY file:b2810cc282a84164c4e1e5f77556bd78260283c00b329045f3f64a63f71e3570 in /usr/local/bin 
# Mon, 09 Jan 2023 18:13:56 GMT
EXPOSE 4222 6222 8222
# Mon, 09 Jan 2023 18:13:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:13:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5926ad44fb07bd1b6468b934276f66499dd403aaefc7e4a2425eecd6d1d6dee3`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 4.8 MB (4799229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee0a9e6a9ad8eabb0f8a9c119f5396c1e80a46027b3a389592c31355c7292fc`  
		Last Modified: Mon, 09 Jan 2023 18:14:25 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c2354f9e90a43e060a732dde40a2101e83a9a005c7bc393617a8b1fe1ee5a6`  
		Last Modified: Mon, 09 Jan 2023 18:14:24 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:af52d6d919884cd7db79b4a1d303d49a1c528e648b093c5e775cbce25320298c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.17763.3887; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:afeb1c1aab2036e50aa6224c94c689511caeeb550eed9ab9bb5858f4911f5503
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc3017edab7b67e29f47c92b56cc34f0f8ebefa6fb8dc0d88c687289b768831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:664b8b57454f3da8850d2d6ef93a053325e8bfd6ac97b3e7eb698f7ab97a8444 in /nats-server 
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:20:20 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:20:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:20:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:20:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5508a75fcd75bf81905bd9dface9fc8d21aadf369f833d008d69b84105e348eb`  
		Last Modified: Fri, 06 Jan 2023 19:21:07 GMT  
		Size: 4.9 MB (4925823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eeb51c6bafbe9123bb07d5a7cce0ca930c05095f5a7e84bd8b18ce00ca863e`  
		Last Modified: Fri, 06 Jan 2023 19:21:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:f99b07d5eeb8971c80cec3162acdac2900afbbfbef5dc64db1611b3e4fb13e10
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4690616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5e7a92ad51faff09589ae0df91b06d2a55a2b4256f5f90eba2977ecf853a16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:06595cdf8db2d70bfb15c918efe6dd450e02ede2db1bb850d93a2a60bbf27df7 in /nats-server 
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:01:45 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:01:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:01:45 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:01:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:873d4014d51427c81aca5b4db8b1b8a46b3d0815b34cdd333e34677aab4a7ba0`  
		Last Modified: Fri, 06 Jan 2023 19:03:15 GMT  
		Size: 4.7 MB (4690108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a283a79d5f31a899e117ab07ef87b81b7318fc27d705d7113398a1bfb28bb2a`  
		Last Modified: Fri, 06 Jan 2023 19:03:14 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:455074c66f1b96f45dbea5e8442f68edfb94af657dee605576061781047e582a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4685531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6a8534b65a22d58be02e8984744983e3c96c1f5e4c060dc057d23d8fec24bd`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:5d6035836a154f215ce8e2c0418c0336bca5ac209aa8e275ca48920cc9b3f584 in /nats-server 
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:15:41 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:15:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:15:41 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:15:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a2d610a1a25d4664f94b304a8a8f12e1d4f104226c5002b279d0499c3505a29c`  
		Last Modified: Fri, 06 Jan 2023 19:17:18 GMT  
		Size: 4.7 MB (4685021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bbede3d18d47ba4e57885915c844dc259ebac29270369d6472059f4ab0e666`  
		Last Modified: Fri, 06 Jan 2023 19:17:17 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ffce0cb26fd6677a5ef05b45318360ae20e737bfdc2863d71bae13ec9bc5047b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4512312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f3692328c1caf31688888abde4f682928158ee544d2e3644095c9a2ecf9d16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:19a72664362353bea19dae5d33666206cbba5c7e481270b1ebf62b792b7a49ea in /nats-server 
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 21:38:21 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 21:38:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 21:38:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 21:38:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4b1c65fa290503905ae36006eb2cd6d2df7267f54d65588f85ba20e700586ed6`  
		Last Modified: Fri, 06 Jan 2023 21:39:09 GMT  
		Size: 4.5 MB (4511804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f83ce0dee80eadbf8b49697841b61fb25ace6c9a7682e596eb060a928836a`  
		Last Modified: Fri, 06 Jan 2023 21:39:08 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:e845c21683844f250e9aa1c9a602145a2a9572a2f16a26fe0bc5655a55d4af0a
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111652455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc3e68def26f7bc94494959dd4188d824f4adc0f2798da534fa3ddcb04b31f2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 05:01:53 GMT
RUN cmd /S /C #(nop) COPY file:a4a62c8491380467a4b102dd5a7b3261bb9b459208df8439f078271edc3f0844 in C:\nats-server.exe 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop) COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:56 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe88f4c5f9972ffecb9a66b92e75ddfe48bf7d8d451ace7af3527653f67ff9e`  
		Last Modified: Thu, 12 Jan 2023 05:02:42 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b3a5e5d556eccf6cfe05556fef18ac84d465f8a82399a65f0055b0b02e524d`  
		Last Modified: Thu, 12 Jan 2023 05:02:41 GMT  
		Size: 5.0 MB (4979907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e5b271add881f0846ea8ed8485d3a494756ab7968ab10d87b6755ea98398ea`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f225c3465088ab25475196dda660c9153324a2e5b3102bab279193b89c187`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38285c2672cee4b1652f8079041ee7d960577486bec6faccc7b37e00b1bd47d2`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c11c4acc914f0d02d9e79700023861efef7c59a441fb283993f986ccd119d42`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:linux`

```console
$ docker pull nats@sha256:ea67865b6a98fa17ea12f0daedb488cea79ec21909782099413e37f3eb4b5234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:linux` - linux; amd64

```console
$ docker pull nats@sha256:afeb1c1aab2036e50aa6224c94c689511caeeb550eed9ab9bb5858f4911f5503
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc3017edab7b67e29f47c92b56cc34f0f8ebefa6fb8dc0d88c687289b768831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:664b8b57454f3da8850d2d6ef93a053325e8bfd6ac97b3e7eb698f7ab97a8444 in /nats-server 
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:20:20 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:20:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:20:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:20:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5508a75fcd75bf81905bd9dface9fc8d21aadf369f833d008d69b84105e348eb`  
		Last Modified: Fri, 06 Jan 2023 19:21:07 GMT  
		Size: 4.9 MB (4925823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eeb51c6bafbe9123bb07d5a7cce0ca930c05095f5a7e84bd8b18ce00ca863e`  
		Last Modified: Fri, 06 Jan 2023 19:21:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:f99b07d5eeb8971c80cec3162acdac2900afbbfbef5dc64db1611b3e4fb13e10
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4690616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5e7a92ad51faff09589ae0df91b06d2a55a2b4256f5f90eba2977ecf853a16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:06595cdf8db2d70bfb15c918efe6dd450e02ede2db1bb850d93a2a60bbf27df7 in /nats-server 
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:01:45 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:01:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:01:45 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:01:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:873d4014d51427c81aca5b4db8b1b8a46b3d0815b34cdd333e34677aab4a7ba0`  
		Last Modified: Fri, 06 Jan 2023 19:03:15 GMT  
		Size: 4.7 MB (4690108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a283a79d5f31a899e117ab07ef87b81b7318fc27d705d7113398a1bfb28bb2a`  
		Last Modified: Fri, 06 Jan 2023 19:03:14 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:455074c66f1b96f45dbea5e8442f68edfb94af657dee605576061781047e582a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4685531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6a8534b65a22d58be02e8984744983e3c96c1f5e4c060dc057d23d8fec24bd`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:5d6035836a154f215ce8e2c0418c0336bca5ac209aa8e275ca48920cc9b3f584 in /nats-server 
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:15:41 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:15:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:15:41 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:15:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a2d610a1a25d4664f94b304a8a8f12e1d4f104226c5002b279d0499c3505a29c`  
		Last Modified: Fri, 06 Jan 2023 19:17:18 GMT  
		Size: 4.7 MB (4685021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bbede3d18d47ba4e57885915c844dc259ebac29270369d6472059f4ab0e666`  
		Last Modified: Fri, 06 Jan 2023 19:17:17 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ffce0cb26fd6677a5ef05b45318360ae20e737bfdc2863d71bae13ec9bc5047b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4512312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f3692328c1caf31688888abde4f682928158ee544d2e3644095c9a2ecf9d16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:19a72664362353bea19dae5d33666206cbba5c7e481270b1ebf62b792b7a49ea in /nats-server 
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 21:38:21 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 21:38:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 21:38:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 21:38:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4b1c65fa290503905ae36006eb2cd6d2df7267f54d65588f85ba20e700586ed6`  
		Last Modified: Fri, 06 Jan 2023 21:39:09 GMT  
		Size: 4.5 MB (4511804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f83ce0dee80eadbf8b49697841b61fb25ace6c9a7682e596eb060a928836a`  
		Last Modified: Fri, 06 Jan 2023 21:39:08 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver`

```console
$ docker pull nats@sha256:07d103bc9407a077b34a4a264ed1cc2ae5f3a0d64e6ac911420cb1f8ca6535d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:nanoserver` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:e845c21683844f250e9aa1c9a602145a2a9572a2f16a26fe0bc5655a55d4af0a
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111652455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc3e68def26f7bc94494959dd4188d824f4adc0f2798da534fa3ddcb04b31f2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 05:01:53 GMT
RUN cmd /S /C #(nop) COPY file:a4a62c8491380467a4b102dd5a7b3261bb9b459208df8439f078271edc3f0844 in C:\nats-server.exe 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop) COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:56 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe88f4c5f9972ffecb9a66b92e75ddfe48bf7d8d451ace7af3527653f67ff9e`  
		Last Modified: Thu, 12 Jan 2023 05:02:42 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b3a5e5d556eccf6cfe05556fef18ac84d465f8a82399a65f0055b0b02e524d`  
		Last Modified: Thu, 12 Jan 2023 05:02:41 GMT  
		Size: 5.0 MB (4979907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e5b271add881f0846ea8ed8485d3a494756ab7968ab10d87b6755ea98398ea`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f225c3465088ab25475196dda660c9153324a2e5b3102bab279193b89c187`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38285c2672cee4b1652f8079041ee7d960577486bec6faccc7b37e00b1bd47d2`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c11c4acc914f0d02d9e79700023861efef7c59a441fb283993f986ccd119d42`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver-1809`

```console
$ docker pull nats@sha256:07d103bc9407a077b34a4a264ed1cc2ae5f3a0d64e6ac911420cb1f8ca6535d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:nanoserver-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:e845c21683844f250e9aa1c9a602145a2a9572a2f16a26fe0bc5655a55d4af0a
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111652455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc3e68def26f7bc94494959dd4188d824f4adc0f2798da534fa3ddcb04b31f2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 05:01:53 GMT
RUN cmd /S /C #(nop) COPY file:a4a62c8491380467a4b102dd5a7b3261bb9b459208df8439f078271edc3f0844 in C:\nats-server.exe 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop) COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:56 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe88f4c5f9972ffecb9a66b92e75ddfe48bf7d8d451ace7af3527653f67ff9e`  
		Last Modified: Thu, 12 Jan 2023 05:02:42 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b3a5e5d556eccf6cfe05556fef18ac84d465f8a82399a65f0055b0b02e524d`  
		Last Modified: Thu, 12 Jan 2023 05:02:41 GMT  
		Size: 5.0 MB (4979907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e5b271add881f0846ea8ed8485d3a494756ab7968ab10d87b6755ea98398ea`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f225c3465088ab25475196dda660c9153324a2e5b3102bab279193b89c187`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38285c2672cee4b1652f8079041ee7d960577486bec6faccc7b37e00b1bd47d2`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c11c4acc914f0d02d9e79700023861efef7c59a441fb283993f986ccd119d42`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:scratch`

```console
$ docker pull nats@sha256:ea67865b6a98fa17ea12f0daedb488cea79ec21909782099413e37f3eb4b5234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:scratch` - linux; amd64

```console
$ docker pull nats@sha256:afeb1c1aab2036e50aa6224c94c689511caeeb550eed9ab9bb5858f4911f5503
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc3017edab7b67e29f47c92b56cc34f0f8ebefa6fb8dc0d88c687289b768831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:664b8b57454f3da8850d2d6ef93a053325e8bfd6ac97b3e7eb698f7ab97a8444 in /nats-server 
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:20:20 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:20:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:20:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:20:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5508a75fcd75bf81905bd9dface9fc8d21aadf369f833d008d69b84105e348eb`  
		Last Modified: Fri, 06 Jan 2023 19:21:07 GMT  
		Size: 4.9 MB (4925823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eeb51c6bafbe9123bb07d5a7cce0ca930c05095f5a7e84bd8b18ce00ca863e`  
		Last Modified: Fri, 06 Jan 2023 19:21:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:f99b07d5eeb8971c80cec3162acdac2900afbbfbef5dc64db1611b3e4fb13e10
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4690616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5e7a92ad51faff09589ae0df91b06d2a55a2b4256f5f90eba2977ecf853a16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:06595cdf8db2d70bfb15c918efe6dd450e02ede2db1bb850d93a2a60bbf27df7 in /nats-server 
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:01:45 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:01:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:01:45 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:01:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:873d4014d51427c81aca5b4db8b1b8a46b3d0815b34cdd333e34677aab4a7ba0`  
		Last Modified: Fri, 06 Jan 2023 19:03:15 GMT  
		Size: 4.7 MB (4690108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a283a79d5f31a899e117ab07ef87b81b7318fc27d705d7113398a1bfb28bb2a`  
		Last Modified: Fri, 06 Jan 2023 19:03:14 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:455074c66f1b96f45dbea5e8442f68edfb94af657dee605576061781047e582a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4685531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6a8534b65a22d58be02e8984744983e3c96c1f5e4c060dc057d23d8fec24bd`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:5d6035836a154f215ce8e2c0418c0336bca5ac209aa8e275ca48920cc9b3f584 in /nats-server 
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:15:41 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:15:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:15:41 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:15:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a2d610a1a25d4664f94b304a8a8f12e1d4f104226c5002b279d0499c3505a29c`  
		Last Modified: Fri, 06 Jan 2023 19:17:18 GMT  
		Size: 4.7 MB (4685021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bbede3d18d47ba4e57885915c844dc259ebac29270369d6472059f4ab0e666`  
		Last Modified: Fri, 06 Jan 2023 19:17:17 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ffce0cb26fd6677a5ef05b45318360ae20e737bfdc2863d71bae13ec9bc5047b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4512312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f3692328c1caf31688888abde4f682928158ee544d2e3644095c9a2ecf9d16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:19a72664362353bea19dae5d33666206cbba5c7e481270b1ebf62b792b7a49ea in /nats-server 
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 21:38:21 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 21:38:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 21:38:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 21:38:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4b1c65fa290503905ae36006eb2cd6d2df7267f54d65588f85ba20e700586ed6`  
		Last Modified: Fri, 06 Jan 2023 21:39:09 GMT  
		Size: 4.5 MB (4511804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f83ce0dee80eadbf8b49697841b61fb25ace6c9a7682e596eb060a928836a`  
		Last Modified: Fri, 06 Jan 2023 21:39:08 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:0bda9d973e618a462ccdec401fbd846d4336ea24605e64b486917cf7d016a018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:windowsservercore` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:ece5866b528bb5bdbf9e8958db777fa65a67233ae3283a92f7691a2ffdc9a842
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1713633428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35d7bef0ba79b7d72ee6db584417968423e0d6088a49d85acd6191c6063055`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 04:59:53 GMT
ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 04:59:54 GMT
ENV NATS_SERVER=2.9.11
# Thu, 12 Jan 2023 04:59:55 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.9.11/nats-server-v2.9.11-windows-amd64.zip
# Thu, 12 Jan 2023 04:59:56 GMT
ENV NATS_SERVER_SHASUM=f5cc4f7ca32dfe64f2bb35740cf824ddfae52b672c5e2775de3996f7beb6ff78
# Thu, 12 Jan 2023 05:00:26 GMT
RUN Set-PSDebug -Trace 2
# Thu, 12 Jan 2023 05:01:31 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 12 Jan 2023 05:01:32 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:33 GMT
EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:35 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eee4cf5f23d13a762e719b10916801f19f9df4bd7ff9b4c5cf57133b3dc04`  
		Last Modified: Thu, 12 Jan 2023 04:39:02 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda92ec365568291ec0ef873b055a8b13d2c46244c129bc4cdf81f0e43e1ec8c`  
		Last Modified: Thu, 12 Jan 2023 05:02:27 GMT  
		Size: 1.4 KB (1391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea2c4f9d6e01b0d17254eb6d24dfcc737da0eaff0463a7eced9cd2b973b9fbc`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65da24bd53dfcc3fe4a38ad3f9c6b24d36a798352c244e95f89052be76953374`  
		Last Modified: Thu, 12 Jan 2023 05:02:26 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d1b9f80e9924294fbaff42d585569e9b358a5f142809020748bc1f1ed85851`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43cde4ee392ec8de96de11dd08b54286d73af4cf3a9baed08914344b0d319361`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 360.6 KB (360576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b9cc9242ba30713d9e25bc43ff4e5ae4ea68b276a26db66d2259ebb407aa92`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 5.3 MB (5315750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926f4bacf0f2a8430311c6a1db4566ab017b3bc720eb2bf0966148257ead7d76`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 2.0 KB (1966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763a38a06009b6d836d07b3338ff8bfad8034e3d58c3cc2fe66c17e1eb99bc12`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c8efc761da552b19e8157cac2d7406d7bc28d00a3c2d67a03e5d5322b3ce7d`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052cb21e01703ef463517a9c3aa3895dccb7653fcda028d30261f3b3a42eade0`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore-1809`

```console
$ docker pull nats@sha256:0bda9d973e618a462ccdec401fbd846d4336ea24605e64b486917cf7d016a018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats:windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:ece5866b528bb5bdbf9e8958db777fa65a67233ae3283a92f7691a2ffdc9a842
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1713633428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35d7bef0ba79b7d72ee6db584417968423e0d6088a49d85acd6191c6063055`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 04:59:53 GMT
ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 04:59:54 GMT
ENV NATS_SERVER=2.9.11
# Thu, 12 Jan 2023 04:59:55 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.9.11/nats-server-v2.9.11-windows-amd64.zip
# Thu, 12 Jan 2023 04:59:56 GMT
ENV NATS_SERVER_SHASUM=f5cc4f7ca32dfe64f2bb35740cf824ddfae52b672c5e2775de3996f7beb6ff78
# Thu, 12 Jan 2023 05:00:26 GMT
RUN Set-PSDebug -Trace 2
# Thu, 12 Jan 2023 05:01:31 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 12 Jan 2023 05:01:32 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:33 GMT
EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:35 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eee4cf5f23d13a762e719b10916801f19f9df4bd7ff9b4c5cf57133b3dc04`  
		Last Modified: Thu, 12 Jan 2023 04:39:02 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda92ec365568291ec0ef873b055a8b13d2c46244c129bc4cdf81f0e43e1ec8c`  
		Last Modified: Thu, 12 Jan 2023 05:02:27 GMT  
		Size: 1.4 KB (1391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea2c4f9d6e01b0d17254eb6d24dfcc737da0eaff0463a7eced9cd2b973b9fbc`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65da24bd53dfcc3fe4a38ad3f9c6b24d36a798352c244e95f89052be76953374`  
		Last Modified: Thu, 12 Jan 2023 05:02:26 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d1b9f80e9924294fbaff42d585569e9b358a5f142809020748bc1f1ed85851`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43cde4ee392ec8de96de11dd08b54286d73af4cf3a9baed08914344b0d319361`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 360.6 KB (360576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b9cc9242ba30713d9e25bc43ff4e5ae4ea68b276a26db66d2259ebb407aa92`  
		Last Modified: Thu, 12 Jan 2023 05:02:25 GMT  
		Size: 5.3 MB (5315750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926f4bacf0f2a8430311c6a1db4566ab017b3bc720eb2bf0966148257ead7d76`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 2.0 KB (1966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763a38a06009b6d836d07b3338ff8bfad8034e3d58c3cc2fe66c17e1eb99bc12`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c8efc761da552b19e8157cac2d7406d7bc28d00a3c2d67a03e5d5322b3ce7d`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052cb21e01703ef463517a9c3aa3895dccb7653fcda028d30261f3b3a42eade0`  
		Last Modified: Thu, 12 Jan 2023 05:02:23 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
