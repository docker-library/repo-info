<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats-streaming`

-	[`nats-streaming:0.25`](#nats-streaming025)
-	[`nats-streaming:0.25-alpine`](#nats-streaming025-alpine)
-	[`nats-streaming:0.25-alpine3.17`](#nats-streaming025-alpine317)
-	[`nats-streaming:0.25-linux`](#nats-streaming025-linux)
-	[`nats-streaming:0.25-nanoserver`](#nats-streaming025-nanoserver)
-	[`nats-streaming:0.25-nanoserver-1809`](#nats-streaming025-nanoserver-1809)
-	[`nats-streaming:0.25-scratch`](#nats-streaming025-scratch)
-	[`nats-streaming:0.25-windowsservercore`](#nats-streaming025-windowsservercore)
-	[`nats-streaming:0.25-windowsservercore-1809`](#nats-streaming025-windowsservercore-1809)
-	[`nats-streaming:0.25.3`](#nats-streaming0253)
-	[`nats-streaming:0.25.3-alpine`](#nats-streaming0253-alpine)
-	[`nats-streaming:0.25.3-alpine3.17`](#nats-streaming0253-alpine317)
-	[`nats-streaming:0.25.3-linux`](#nats-streaming0253-linux)
-	[`nats-streaming:0.25.3-nanoserver`](#nats-streaming0253-nanoserver)
-	[`nats-streaming:0.25.3-nanoserver-1809`](#nats-streaming0253-nanoserver-1809)
-	[`nats-streaming:0.25.3-scratch`](#nats-streaming0253-scratch)
-	[`nats-streaming:0.25.3-windowsservercore`](#nats-streaming0253-windowsservercore)
-	[`nats-streaming:0.25.3-windowsservercore-1809`](#nats-streaming0253-windowsservercore-1809)
-	[`nats-streaming:alpine`](#nats-streamingalpine)
-	[`nats-streaming:alpine3.17`](#nats-streamingalpine317)
-	[`nats-streaming:latest`](#nats-streaminglatest)
-	[`nats-streaming:linux`](#nats-streaminglinux)
-	[`nats-streaming:nanoserver`](#nats-streamingnanoserver)
-	[`nats-streaming:nanoserver-1809`](#nats-streamingnanoserver-1809)
-	[`nats-streaming:scratch`](#nats-streamingscratch)
-	[`nats-streaming:windowsservercore`](#nats-streamingwindowsservercore)
-	[`nats-streaming:windowsservercore-1809`](#nats-streamingwindowsservercore-1809)

## `nats-streaming:0.25`

```console
$ docker pull nats-streaming@sha256:8148751e53e78dd8b7a19516821244ff4537bd3b93d3783ed0a3abe29f410720
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.17763.3887; amd64

### `nats-streaming:0.25` - linux; amd64

```console
$ docker pull nats-streaming@sha256:1a8745712d00a54265c8552863b8d15a568b138368f4fcb090c075e361124c14
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7666171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a48bccf54f8248bddd0509da6d1cc1fe8b97638f6120c98e4c9fb191f6f1723`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:31:40 GMT
COPY file:379a895964ce5e0c1d6e137ee5ee8f0cbfb7fdbb8cb20ace28a5de2e106737eb in /nats-streaming-server 
# Thu, 12 Jan 2023 19:31:40 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:31:41 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:31:41 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:27e278d5ae53768a5d47168e25eb6824c8445f2866af5ea11943739d93ce14dd`  
		Last Modified: Thu, 12 Jan 2023 19:32:24 GMT  
		Size: 7.7 MB (7666171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:50a79015fcbe577e98cb5ef0083d388922974261b0fb10ea73869e3350b6f43b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7329068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1e2302229108f5014008299e824b0108e469ec9c7a96816d72f226fae6abfb`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 18:57:18 GMT
COPY file:1214576567fc0305b3b6ac3e280bb8d103f74aee2edde4b083a56167e41f0ed6 in /nats-streaming-server 
# Thu, 12 Jan 2023 18:57:18 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 18:57:18 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 18:57:18 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:c76ebdda577d691c315b52196919494198f01e7e8a34dac185a83423d3954e4f`  
		Last Modified: Thu, 12 Jan 2023 18:58:31 GMT  
		Size: 7.3 MB (7329068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:f9a1149ee423fde34350a83aba253a8825e9bcc08b0e58dd8cc29961cea0a779
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7318728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d189f7022493db7a0fe5dca6e1f09b17789835f946910d896c052399409f95e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:11:30 GMT
COPY file:58653f0fa67e6667e5ec024a8b7912bc01a12570dac2c7550d04c2e617252bf1 in /nats-streaming-server 
# Thu, 12 Jan 2023 19:11:30 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:11:30 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:11:30 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:edc8f5310312ee44896e1639c9af8d17c77c9fc7cfad03f8c1268ab57def8348`  
		Last Modified: Thu, 12 Jan 2023 19:12:45 GMT  
		Size: 7.3 MB (7318728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:56dfb1bed3b56ea0b72be1b79a49422abdde1189777ebfb55eda7223819eb6d3
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7019428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7533789a178d97f2445ccdb62e46c98a1cec7249342ad21b5c40f38ee0652bff`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:49:56 GMT
COPY file:33b7386a5076cd63bc03cf5c4de0f89afe8fd8034e8fd3a792715c6cb567514b in /nats-streaming-server 
# Thu, 12 Jan 2023 19:49:56 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:49:56 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:49:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:b7cbef42b1eb11c382f636b05c7fea54926364454d6b2727ea8e52f63785a536`  
		Last Modified: Thu, 12 Jan 2023 19:50:42 GMT  
		Size: 7.0 MB (7019428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats-streaming@sha256:64576300bdd06e880521f0a807d6e949a8f68dd2b289e18a1edecb7e9e071b7f
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114465156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd5c5b69b4a950617a8fd5be371053e50b7abefbcb15affdede25e649a56d9f`
-	Entrypoint: `["C:\\nats-streaming-server.exe"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 19:37:42 GMT
RUN cmd /S /C #(nop) COPY file:849c881d7b0e5994559eaa48b9cc851618ba91f60a4b0e8cb48b89862fd563c8 in C:\nats-streaming-server.exe 
# Thu, 12 Jan 2023 19:37:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-streaming-server.exe"]
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  CMD ["-m" "8222"]
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
	-	`sha256:b0c4c912ef8472df8c3ff7ba3e36810ea5251a7898c9f9899d3453a9589af308`  
		Last Modified: Thu, 12 Jan 2023 19:38:24 GMT  
		Size: 7.8 MB (7794427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7646262117969651479b14b578b7c256dfc4dc99b8f4101a437ad610098fad`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295fc6bf226795abb927ba28dd663f1a9750578f5be1668cb1dce37b01bcfda5`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7789d0a8c721a9cdf17cea2c4ac33ec001cd33ade5f82d1c4c45a63a5e6f2d0`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25-alpine`

```console
$ docker pull nats-streaming@sha256:f72cdce9bf2a02d0fc29b06825b29cd6fa25c358156d2ddce2dfa99d83a235fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:0.25-alpine` - linux; amd64

```console
$ docker pull nats-streaming@sha256:59d11c638931fb0685a2dd617463e0637982c161307d8f473a5f6e9eee170fec
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11322617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9172ec3b28bc8578e5ffaff6f922c057a44990b048c54f6d395e0a6f9c6d61fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:30:42 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:30:44 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:30:44 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:30:44 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:30:44 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a76660bc575b193154f1d8913541b8774fd49551876bd772988e4bd985028b`  
		Last Modified: Thu, 12 Jan 2023 19:32:05 GMT  
		Size: 8.0 MB (7951569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2878d00f4f719975f6748ae85d5132a34b162c7959cc324e70ed53d73518ab4d`  
		Last Modified: Thu, 12 Jan 2023 19:32:04 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25-alpine` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:3e996350dee075f2445e7b567aa875f2662fbd43278ffd9eb4affb4e876c6f03
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10722328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c061671b7e00ca5143fc1acb3fa56242c313a8ebcd7ddf6bff53780b6a00aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 18:57:05 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 18:57:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 18:57:08 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 18:57:08 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 18:57:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 18:57:09 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7adc39ea168192d899327c397b0f96390aa58fe49b9c369f222bef3da2390e0`  
		Last Modified: Thu, 12 Jan 2023 18:58:05 GMT  
		Size: 7.6 MB (7614664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d066baf2e6f26294ced64ff7248b0938ee4c5f3c1655b61749300fa9e811875`  
		Last Modified: Thu, 12 Jan 2023 18:58:03 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25-alpine` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:f129c01e4a5f63bf87a8563a815f3f15f181e28a0121ef3592904fee0b561f22
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10472138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aee635b9b19bf3dc2f270c1ba18f256f1b8071d888b74516dc2f539a48f3a6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:11:01 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:11:04 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:11:04 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:11:04 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:11:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:11:04 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e647d25acb1cd72a23dda4ac1abc04c18e0a6804db5f2328119c7405a1afc270`  
		Last Modified: Thu, 12 Jan 2023 19:12:19 GMT  
		Size: 7.6 MB (7606508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad67a89f4f431486ce9614130f4b5ff359c8ab0768b3e4f11c8ce9d078e468f`  
		Last Modified: Thu, 12 Jan 2023 19:12:17 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25-alpine` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:a18180bcf3ee4fd4ddd70dd214370047bd0e33487851a6cf6ecae7427a064e45
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10566568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d25170c44e27af0a0906eefe45b5dcbaad99dde54a239e10075ebf1edcd9c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:49:24 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:49:27 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:49:27 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:49:27 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:49:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:49:28 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccd7571b47c7e88a2cff65164de4ba606baf3d6069487b86ba20ac11cc42a80`  
		Last Modified: Thu, 12 Jan 2023 19:50:24 GMT  
		Size: 7.3 MB (7306905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5316848d8cf6c4c6d16f1aae150150c6a8e1ef991c0230af062e9bcde9a1dc13`  
		Last Modified: Thu, 12 Jan 2023 19:50:23 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25-alpine3.17`

```console
$ docker pull nats-streaming@sha256:f72cdce9bf2a02d0fc29b06825b29cd6fa25c358156d2ddce2dfa99d83a235fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:0.25-alpine3.17` - linux; amd64

```console
$ docker pull nats-streaming@sha256:59d11c638931fb0685a2dd617463e0637982c161307d8f473a5f6e9eee170fec
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11322617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9172ec3b28bc8578e5ffaff6f922c057a44990b048c54f6d395e0a6f9c6d61fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:30:42 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:30:44 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:30:44 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:30:44 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:30:44 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a76660bc575b193154f1d8913541b8774fd49551876bd772988e4bd985028b`  
		Last Modified: Thu, 12 Jan 2023 19:32:05 GMT  
		Size: 8.0 MB (7951569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2878d00f4f719975f6748ae85d5132a34b162c7959cc324e70ed53d73518ab4d`  
		Last Modified: Thu, 12 Jan 2023 19:32:04 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25-alpine3.17` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:3e996350dee075f2445e7b567aa875f2662fbd43278ffd9eb4affb4e876c6f03
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10722328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c061671b7e00ca5143fc1acb3fa56242c313a8ebcd7ddf6bff53780b6a00aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 18:57:05 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 18:57:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 18:57:08 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 18:57:08 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 18:57:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 18:57:09 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7adc39ea168192d899327c397b0f96390aa58fe49b9c369f222bef3da2390e0`  
		Last Modified: Thu, 12 Jan 2023 18:58:05 GMT  
		Size: 7.6 MB (7614664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d066baf2e6f26294ced64ff7248b0938ee4c5f3c1655b61749300fa9e811875`  
		Last Modified: Thu, 12 Jan 2023 18:58:03 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25-alpine3.17` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:f129c01e4a5f63bf87a8563a815f3f15f181e28a0121ef3592904fee0b561f22
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10472138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aee635b9b19bf3dc2f270c1ba18f256f1b8071d888b74516dc2f539a48f3a6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:11:01 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:11:04 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:11:04 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:11:04 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:11:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:11:04 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e647d25acb1cd72a23dda4ac1abc04c18e0a6804db5f2328119c7405a1afc270`  
		Last Modified: Thu, 12 Jan 2023 19:12:19 GMT  
		Size: 7.6 MB (7606508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad67a89f4f431486ce9614130f4b5ff359c8ab0768b3e4f11c8ce9d078e468f`  
		Last Modified: Thu, 12 Jan 2023 19:12:17 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25-alpine3.17` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:a18180bcf3ee4fd4ddd70dd214370047bd0e33487851a6cf6ecae7427a064e45
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10566568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d25170c44e27af0a0906eefe45b5dcbaad99dde54a239e10075ebf1edcd9c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:49:24 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:49:27 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:49:27 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:49:27 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:49:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:49:28 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccd7571b47c7e88a2cff65164de4ba606baf3d6069487b86ba20ac11cc42a80`  
		Last Modified: Thu, 12 Jan 2023 19:50:24 GMT  
		Size: 7.3 MB (7306905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5316848d8cf6c4c6d16f1aae150150c6a8e1ef991c0230af062e9bcde9a1dc13`  
		Last Modified: Thu, 12 Jan 2023 19:50:23 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25-linux`

```console
$ docker pull nats-streaming@sha256:434a215ccaac82dfe96c194c8cf0d842feb49c92f49d5da6a2d8ffb029141c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:0.25-linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:1a8745712d00a54265c8552863b8d15a568b138368f4fcb090c075e361124c14
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7666171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a48bccf54f8248bddd0509da6d1cc1fe8b97638f6120c98e4c9fb191f6f1723`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:31:40 GMT
COPY file:379a895964ce5e0c1d6e137ee5ee8f0cbfb7fdbb8cb20ace28a5de2e106737eb in /nats-streaming-server 
# Thu, 12 Jan 2023 19:31:40 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:31:41 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:31:41 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:27e278d5ae53768a5d47168e25eb6824c8445f2866af5ea11943739d93ce14dd`  
		Last Modified: Thu, 12 Jan 2023 19:32:24 GMT  
		Size: 7.7 MB (7666171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25-linux` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:50a79015fcbe577e98cb5ef0083d388922974261b0fb10ea73869e3350b6f43b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7329068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1e2302229108f5014008299e824b0108e469ec9c7a96816d72f226fae6abfb`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 18:57:18 GMT
COPY file:1214576567fc0305b3b6ac3e280bb8d103f74aee2edde4b083a56167e41f0ed6 in /nats-streaming-server 
# Thu, 12 Jan 2023 18:57:18 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 18:57:18 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 18:57:18 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:c76ebdda577d691c315b52196919494198f01e7e8a34dac185a83423d3954e4f`  
		Last Modified: Thu, 12 Jan 2023 18:58:31 GMT  
		Size: 7.3 MB (7329068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25-linux` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:f9a1149ee423fde34350a83aba253a8825e9bcc08b0e58dd8cc29961cea0a779
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7318728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d189f7022493db7a0fe5dca6e1f09b17789835f946910d896c052399409f95e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:11:30 GMT
COPY file:58653f0fa67e6667e5ec024a8b7912bc01a12570dac2c7550d04c2e617252bf1 in /nats-streaming-server 
# Thu, 12 Jan 2023 19:11:30 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:11:30 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:11:30 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:edc8f5310312ee44896e1639c9af8d17c77c9fc7cfad03f8c1268ab57def8348`  
		Last Modified: Thu, 12 Jan 2023 19:12:45 GMT  
		Size: 7.3 MB (7318728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25-linux` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:56dfb1bed3b56ea0b72be1b79a49422abdde1189777ebfb55eda7223819eb6d3
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7019428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7533789a178d97f2445ccdb62e46c98a1cec7249342ad21b5c40f38ee0652bff`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:49:56 GMT
COPY file:33b7386a5076cd63bc03cf5c4de0f89afe8fd8034e8fd3a792715c6cb567514b in /nats-streaming-server 
# Thu, 12 Jan 2023 19:49:56 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:49:56 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:49:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:b7cbef42b1eb11c382f636b05c7fea54926364454d6b2727ea8e52f63785a536`  
		Last Modified: Thu, 12 Jan 2023 19:50:42 GMT  
		Size: 7.0 MB (7019428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25-nanoserver`

```console
$ docker pull nats-streaming@sha256:215774d152726880fa2353032d6ee9247b41492d6dfc6e4cfd0e49c6f65aa090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats-streaming:0.25-nanoserver` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats-streaming@sha256:64576300bdd06e880521f0a807d6e949a8f68dd2b289e18a1edecb7e9e071b7f
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114465156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd5c5b69b4a950617a8fd5be371053e50b7abefbcb15affdede25e649a56d9f`
-	Entrypoint: `["C:\\nats-streaming-server.exe"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 19:37:42 GMT
RUN cmd /S /C #(nop) COPY file:849c881d7b0e5994559eaa48b9cc851618ba91f60a4b0e8cb48b89862fd563c8 in C:\nats-streaming-server.exe 
# Thu, 12 Jan 2023 19:37:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-streaming-server.exe"]
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  CMD ["-m" "8222"]
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
	-	`sha256:b0c4c912ef8472df8c3ff7ba3e36810ea5251a7898c9f9899d3453a9589af308`  
		Last Modified: Thu, 12 Jan 2023 19:38:24 GMT  
		Size: 7.8 MB (7794427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7646262117969651479b14b578b7c256dfc4dc99b8f4101a437ad610098fad`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295fc6bf226795abb927ba28dd663f1a9750578f5be1668cb1dce37b01bcfda5`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7789d0a8c721a9cdf17cea2c4ac33ec001cd33ade5f82d1c4c45a63a5e6f2d0`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25-nanoserver-1809`

```console
$ docker pull nats-streaming@sha256:215774d152726880fa2353032d6ee9247b41492d6dfc6e4cfd0e49c6f65aa090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats-streaming:0.25-nanoserver-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats-streaming@sha256:64576300bdd06e880521f0a807d6e949a8f68dd2b289e18a1edecb7e9e071b7f
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114465156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd5c5b69b4a950617a8fd5be371053e50b7abefbcb15affdede25e649a56d9f`
-	Entrypoint: `["C:\\nats-streaming-server.exe"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 19:37:42 GMT
RUN cmd /S /C #(nop) COPY file:849c881d7b0e5994559eaa48b9cc851618ba91f60a4b0e8cb48b89862fd563c8 in C:\nats-streaming-server.exe 
# Thu, 12 Jan 2023 19:37:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-streaming-server.exe"]
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  CMD ["-m" "8222"]
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
	-	`sha256:b0c4c912ef8472df8c3ff7ba3e36810ea5251a7898c9f9899d3453a9589af308`  
		Last Modified: Thu, 12 Jan 2023 19:38:24 GMT  
		Size: 7.8 MB (7794427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7646262117969651479b14b578b7c256dfc4dc99b8f4101a437ad610098fad`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295fc6bf226795abb927ba28dd663f1a9750578f5be1668cb1dce37b01bcfda5`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7789d0a8c721a9cdf17cea2c4ac33ec001cd33ade5f82d1c4c45a63a5e6f2d0`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25-scratch`

```console
$ docker pull nats-streaming@sha256:434a215ccaac82dfe96c194c8cf0d842feb49c92f49d5da6a2d8ffb029141c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:0.25-scratch` - linux; amd64

```console
$ docker pull nats-streaming@sha256:1a8745712d00a54265c8552863b8d15a568b138368f4fcb090c075e361124c14
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7666171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a48bccf54f8248bddd0509da6d1cc1fe8b97638f6120c98e4c9fb191f6f1723`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:31:40 GMT
COPY file:379a895964ce5e0c1d6e137ee5ee8f0cbfb7fdbb8cb20ace28a5de2e106737eb in /nats-streaming-server 
# Thu, 12 Jan 2023 19:31:40 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:31:41 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:31:41 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:27e278d5ae53768a5d47168e25eb6824c8445f2866af5ea11943739d93ce14dd`  
		Last Modified: Thu, 12 Jan 2023 19:32:24 GMT  
		Size: 7.7 MB (7666171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25-scratch` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:50a79015fcbe577e98cb5ef0083d388922974261b0fb10ea73869e3350b6f43b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7329068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1e2302229108f5014008299e824b0108e469ec9c7a96816d72f226fae6abfb`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 18:57:18 GMT
COPY file:1214576567fc0305b3b6ac3e280bb8d103f74aee2edde4b083a56167e41f0ed6 in /nats-streaming-server 
# Thu, 12 Jan 2023 18:57:18 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 18:57:18 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 18:57:18 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:c76ebdda577d691c315b52196919494198f01e7e8a34dac185a83423d3954e4f`  
		Last Modified: Thu, 12 Jan 2023 18:58:31 GMT  
		Size: 7.3 MB (7329068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25-scratch` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:f9a1149ee423fde34350a83aba253a8825e9bcc08b0e58dd8cc29961cea0a779
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7318728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d189f7022493db7a0fe5dca6e1f09b17789835f946910d896c052399409f95e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:11:30 GMT
COPY file:58653f0fa67e6667e5ec024a8b7912bc01a12570dac2c7550d04c2e617252bf1 in /nats-streaming-server 
# Thu, 12 Jan 2023 19:11:30 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:11:30 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:11:30 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:edc8f5310312ee44896e1639c9af8d17c77c9fc7cfad03f8c1268ab57def8348`  
		Last Modified: Thu, 12 Jan 2023 19:12:45 GMT  
		Size: 7.3 MB (7318728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25-scratch` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:56dfb1bed3b56ea0b72be1b79a49422abdde1189777ebfb55eda7223819eb6d3
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7019428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7533789a178d97f2445ccdb62e46c98a1cec7249342ad21b5c40f38ee0652bff`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:49:56 GMT
COPY file:33b7386a5076cd63bc03cf5c4de0f89afe8fd8034e8fd3a792715c6cb567514b in /nats-streaming-server 
# Thu, 12 Jan 2023 19:49:56 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:49:56 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:49:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:b7cbef42b1eb11c382f636b05c7fea54926364454d6b2727ea8e52f63785a536`  
		Last Modified: Thu, 12 Jan 2023 19:50:42 GMT  
		Size: 7.0 MB (7019428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25-windowsservercore`

```console
$ docker pull nats-streaming@sha256:6471642e87b0f2179b40bf84dbf745f749cb4a7ef5a954f8ab332e0d64765570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats-streaming:0.25-windowsservercore` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats-streaming@sha256:70ad73e4b756edcbc985d8520fdc3ab8ea1525157b2eb059b7db9a7e3daa8552
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1716446395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02988cc96a47099def39eb6249f0d28bcd0d5ea2d242ed0489965a79a6e15b4a`
-	Entrypoint: `["C:\\nats-streaming-server.exe"]`
-	Default Command: `["-m","8222"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 04:59:53 GMT
ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 19:35:27 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:35:28 GMT
ENV NATS_STREAMING_SERVER_DOWNLOAD=https://github.com/nats-io/nats-streaming-server/releases/download/v0.25.3/nats-streaming-server-v0.25.3-windows-amd64.zip
# Thu, 12 Jan 2023 19:35:29 GMT
ENV NATS_STREAMING_SERVER_SHASUM=b25aab68b84cba76e3edec5d524d2a792f460127d159ecb4d2e6168c7635c10c
# Thu, 12 Jan 2023 19:36:00 GMT
RUN Set-PSDebug -Trace 2
# Thu, 12 Jan 2023 19:37:26 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_STREAMING_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_STREAMING_SERVER_DOWNLOAD -OutFile nats-streaming.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_STREAMING_SERVER_SHASUM); 	if ((Get-FileHash nats-streaming.zip -Algorithm sha256).Hash -ne $env:NATS_STREAMING_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats-streaming.zip'; 	Expand-Archive -Path 'nats-streaming.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-streaming-server-v*/nats-streaming-server.exe -Destination C:\\nats-streaming-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats-streaming.zip; 	Remove-Item -Recurse -Force nats-streaming-server-v*; 		Write-Host 'complete.';
# Thu, 12 Jan 2023 19:37:27 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:37:28 GMT
ENTRYPOINT ["C:\\nats-streaming-server.exe"]
# Thu, 12 Jan 2023 19:37:29 GMT
CMD ["-m" "8222"]
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
	-	`sha256:6fd9032615dc83ca4276a5ffdc4ecc61dfeb64682e26712951e8820f2a29ac39`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fb93f8164bb100adb936c7218b29a3b9678140cbe0ac5c5d661edad54e81d2`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43ca3eaac11d9f34e2992c082a5303ea13396e1d983e0f015b06771b71e6fa6`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9733d6881b1cd7c645acb678f7bff47e402c10f2d4c5be4c34fe863b946e5871`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 360.6 KB (360637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9330481bc2a56887b902bf3f75ec4c856b795e5453535cb85374a3a9525065ee`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 8.1 MB (8130582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94aec9f07717905305aae4f3889113bcc7b9773cb6f2fd4ad8f80128b1425a4`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81f6759a805ceacad16448c19944436e09acaace2aa88a18ded3133abe96ad7`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4acef17f04e700c48c45e8371346cd5e9c1f0d22dd3fa8f6b563b7459eb564`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25-windowsservercore-1809`

```console
$ docker pull nats-streaming@sha256:6471642e87b0f2179b40bf84dbf745f749cb4a7ef5a954f8ab332e0d64765570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats-streaming:0.25-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats-streaming@sha256:70ad73e4b756edcbc985d8520fdc3ab8ea1525157b2eb059b7db9a7e3daa8552
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1716446395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02988cc96a47099def39eb6249f0d28bcd0d5ea2d242ed0489965a79a6e15b4a`
-	Entrypoint: `["C:\\nats-streaming-server.exe"]`
-	Default Command: `["-m","8222"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 04:59:53 GMT
ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 19:35:27 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:35:28 GMT
ENV NATS_STREAMING_SERVER_DOWNLOAD=https://github.com/nats-io/nats-streaming-server/releases/download/v0.25.3/nats-streaming-server-v0.25.3-windows-amd64.zip
# Thu, 12 Jan 2023 19:35:29 GMT
ENV NATS_STREAMING_SERVER_SHASUM=b25aab68b84cba76e3edec5d524d2a792f460127d159ecb4d2e6168c7635c10c
# Thu, 12 Jan 2023 19:36:00 GMT
RUN Set-PSDebug -Trace 2
# Thu, 12 Jan 2023 19:37:26 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_STREAMING_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_STREAMING_SERVER_DOWNLOAD -OutFile nats-streaming.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_STREAMING_SERVER_SHASUM); 	if ((Get-FileHash nats-streaming.zip -Algorithm sha256).Hash -ne $env:NATS_STREAMING_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats-streaming.zip'; 	Expand-Archive -Path 'nats-streaming.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-streaming-server-v*/nats-streaming-server.exe -Destination C:\\nats-streaming-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats-streaming.zip; 	Remove-Item -Recurse -Force nats-streaming-server-v*; 		Write-Host 'complete.';
# Thu, 12 Jan 2023 19:37:27 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:37:28 GMT
ENTRYPOINT ["C:\\nats-streaming-server.exe"]
# Thu, 12 Jan 2023 19:37:29 GMT
CMD ["-m" "8222"]
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
	-	`sha256:6fd9032615dc83ca4276a5ffdc4ecc61dfeb64682e26712951e8820f2a29ac39`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fb93f8164bb100adb936c7218b29a3b9678140cbe0ac5c5d661edad54e81d2`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43ca3eaac11d9f34e2992c082a5303ea13396e1d983e0f015b06771b71e6fa6`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9733d6881b1cd7c645acb678f7bff47e402c10f2d4c5be4c34fe863b946e5871`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 360.6 KB (360637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9330481bc2a56887b902bf3f75ec4c856b795e5453535cb85374a3a9525065ee`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 8.1 MB (8130582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94aec9f07717905305aae4f3889113bcc7b9773cb6f2fd4ad8f80128b1425a4`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81f6759a805ceacad16448c19944436e09acaace2aa88a18ded3133abe96ad7`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4acef17f04e700c48c45e8371346cd5e9c1f0d22dd3fa8f6b563b7459eb564`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25.3`

```console
$ docker pull nats-streaming@sha256:8148751e53e78dd8b7a19516821244ff4537bd3b93d3783ed0a3abe29f410720
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.17763.3887; amd64

### `nats-streaming:0.25.3` - linux; amd64

```console
$ docker pull nats-streaming@sha256:1a8745712d00a54265c8552863b8d15a568b138368f4fcb090c075e361124c14
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7666171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a48bccf54f8248bddd0509da6d1cc1fe8b97638f6120c98e4c9fb191f6f1723`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:31:40 GMT
COPY file:379a895964ce5e0c1d6e137ee5ee8f0cbfb7fdbb8cb20ace28a5de2e106737eb in /nats-streaming-server 
# Thu, 12 Jan 2023 19:31:40 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:31:41 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:31:41 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:27e278d5ae53768a5d47168e25eb6824c8445f2866af5ea11943739d93ce14dd`  
		Last Modified: Thu, 12 Jan 2023 19:32:24 GMT  
		Size: 7.7 MB (7666171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:50a79015fcbe577e98cb5ef0083d388922974261b0fb10ea73869e3350b6f43b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7329068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1e2302229108f5014008299e824b0108e469ec9c7a96816d72f226fae6abfb`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 18:57:18 GMT
COPY file:1214576567fc0305b3b6ac3e280bb8d103f74aee2edde4b083a56167e41f0ed6 in /nats-streaming-server 
# Thu, 12 Jan 2023 18:57:18 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 18:57:18 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 18:57:18 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:c76ebdda577d691c315b52196919494198f01e7e8a34dac185a83423d3954e4f`  
		Last Modified: Thu, 12 Jan 2023 18:58:31 GMT  
		Size: 7.3 MB (7329068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:f9a1149ee423fde34350a83aba253a8825e9bcc08b0e58dd8cc29961cea0a779
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7318728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d189f7022493db7a0fe5dca6e1f09b17789835f946910d896c052399409f95e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:11:30 GMT
COPY file:58653f0fa67e6667e5ec024a8b7912bc01a12570dac2c7550d04c2e617252bf1 in /nats-streaming-server 
# Thu, 12 Jan 2023 19:11:30 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:11:30 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:11:30 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:edc8f5310312ee44896e1639c9af8d17c77c9fc7cfad03f8c1268ab57def8348`  
		Last Modified: Thu, 12 Jan 2023 19:12:45 GMT  
		Size: 7.3 MB (7318728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:56dfb1bed3b56ea0b72be1b79a49422abdde1189777ebfb55eda7223819eb6d3
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7019428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7533789a178d97f2445ccdb62e46c98a1cec7249342ad21b5c40f38ee0652bff`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:49:56 GMT
COPY file:33b7386a5076cd63bc03cf5c4de0f89afe8fd8034e8fd3a792715c6cb567514b in /nats-streaming-server 
# Thu, 12 Jan 2023 19:49:56 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:49:56 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:49:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:b7cbef42b1eb11c382f636b05c7fea54926364454d6b2727ea8e52f63785a536`  
		Last Modified: Thu, 12 Jan 2023 19:50:42 GMT  
		Size: 7.0 MB (7019428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats-streaming@sha256:64576300bdd06e880521f0a807d6e949a8f68dd2b289e18a1edecb7e9e071b7f
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114465156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd5c5b69b4a950617a8fd5be371053e50b7abefbcb15affdede25e649a56d9f`
-	Entrypoint: `["C:\\nats-streaming-server.exe"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 19:37:42 GMT
RUN cmd /S /C #(nop) COPY file:849c881d7b0e5994559eaa48b9cc851618ba91f60a4b0e8cb48b89862fd563c8 in C:\nats-streaming-server.exe 
# Thu, 12 Jan 2023 19:37:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-streaming-server.exe"]
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  CMD ["-m" "8222"]
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
	-	`sha256:b0c4c912ef8472df8c3ff7ba3e36810ea5251a7898c9f9899d3453a9589af308`  
		Last Modified: Thu, 12 Jan 2023 19:38:24 GMT  
		Size: 7.8 MB (7794427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7646262117969651479b14b578b7c256dfc4dc99b8f4101a437ad610098fad`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295fc6bf226795abb927ba28dd663f1a9750578f5be1668cb1dce37b01bcfda5`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7789d0a8c721a9cdf17cea2c4ac33ec001cd33ade5f82d1c4c45a63a5e6f2d0`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25.3-alpine`

```console
$ docker pull nats-streaming@sha256:f72cdce9bf2a02d0fc29b06825b29cd6fa25c358156d2ddce2dfa99d83a235fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:0.25.3-alpine` - linux; amd64

```console
$ docker pull nats-streaming@sha256:59d11c638931fb0685a2dd617463e0637982c161307d8f473a5f6e9eee170fec
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11322617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9172ec3b28bc8578e5ffaff6f922c057a44990b048c54f6d395e0a6f9c6d61fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:30:42 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:30:44 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:30:44 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:30:44 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:30:44 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a76660bc575b193154f1d8913541b8774fd49551876bd772988e4bd985028b`  
		Last Modified: Thu, 12 Jan 2023 19:32:05 GMT  
		Size: 8.0 MB (7951569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2878d00f4f719975f6748ae85d5132a34b162c7959cc324e70ed53d73518ab4d`  
		Last Modified: Thu, 12 Jan 2023 19:32:04 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3-alpine` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:3e996350dee075f2445e7b567aa875f2662fbd43278ffd9eb4affb4e876c6f03
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10722328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c061671b7e00ca5143fc1acb3fa56242c313a8ebcd7ddf6bff53780b6a00aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 18:57:05 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 18:57:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 18:57:08 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 18:57:08 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 18:57:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 18:57:09 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7adc39ea168192d899327c397b0f96390aa58fe49b9c369f222bef3da2390e0`  
		Last Modified: Thu, 12 Jan 2023 18:58:05 GMT  
		Size: 7.6 MB (7614664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d066baf2e6f26294ced64ff7248b0938ee4c5f3c1655b61749300fa9e811875`  
		Last Modified: Thu, 12 Jan 2023 18:58:03 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3-alpine` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:f129c01e4a5f63bf87a8563a815f3f15f181e28a0121ef3592904fee0b561f22
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10472138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aee635b9b19bf3dc2f270c1ba18f256f1b8071d888b74516dc2f539a48f3a6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:11:01 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:11:04 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:11:04 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:11:04 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:11:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:11:04 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e647d25acb1cd72a23dda4ac1abc04c18e0a6804db5f2328119c7405a1afc270`  
		Last Modified: Thu, 12 Jan 2023 19:12:19 GMT  
		Size: 7.6 MB (7606508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad67a89f4f431486ce9614130f4b5ff359c8ab0768b3e4f11c8ce9d078e468f`  
		Last Modified: Thu, 12 Jan 2023 19:12:17 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3-alpine` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:a18180bcf3ee4fd4ddd70dd214370047bd0e33487851a6cf6ecae7427a064e45
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10566568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d25170c44e27af0a0906eefe45b5dcbaad99dde54a239e10075ebf1edcd9c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:49:24 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:49:27 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:49:27 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:49:27 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:49:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:49:28 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccd7571b47c7e88a2cff65164de4ba606baf3d6069487b86ba20ac11cc42a80`  
		Last Modified: Thu, 12 Jan 2023 19:50:24 GMT  
		Size: 7.3 MB (7306905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5316848d8cf6c4c6d16f1aae150150c6a8e1ef991c0230af062e9bcde9a1dc13`  
		Last Modified: Thu, 12 Jan 2023 19:50:23 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25.3-alpine3.17`

```console
$ docker pull nats-streaming@sha256:f72cdce9bf2a02d0fc29b06825b29cd6fa25c358156d2ddce2dfa99d83a235fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:0.25.3-alpine3.17` - linux; amd64

```console
$ docker pull nats-streaming@sha256:59d11c638931fb0685a2dd617463e0637982c161307d8f473a5f6e9eee170fec
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11322617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9172ec3b28bc8578e5ffaff6f922c057a44990b048c54f6d395e0a6f9c6d61fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:30:42 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:30:44 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:30:44 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:30:44 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:30:44 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a76660bc575b193154f1d8913541b8774fd49551876bd772988e4bd985028b`  
		Last Modified: Thu, 12 Jan 2023 19:32:05 GMT  
		Size: 8.0 MB (7951569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2878d00f4f719975f6748ae85d5132a34b162c7959cc324e70ed53d73518ab4d`  
		Last Modified: Thu, 12 Jan 2023 19:32:04 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3-alpine3.17` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:3e996350dee075f2445e7b567aa875f2662fbd43278ffd9eb4affb4e876c6f03
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10722328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c061671b7e00ca5143fc1acb3fa56242c313a8ebcd7ddf6bff53780b6a00aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 18:57:05 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 18:57:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 18:57:08 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 18:57:08 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 18:57:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 18:57:09 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7adc39ea168192d899327c397b0f96390aa58fe49b9c369f222bef3da2390e0`  
		Last Modified: Thu, 12 Jan 2023 18:58:05 GMT  
		Size: 7.6 MB (7614664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d066baf2e6f26294ced64ff7248b0938ee4c5f3c1655b61749300fa9e811875`  
		Last Modified: Thu, 12 Jan 2023 18:58:03 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3-alpine3.17` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:f129c01e4a5f63bf87a8563a815f3f15f181e28a0121ef3592904fee0b561f22
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10472138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aee635b9b19bf3dc2f270c1ba18f256f1b8071d888b74516dc2f539a48f3a6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:11:01 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:11:04 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:11:04 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:11:04 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:11:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:11:04 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e647d25acb1cd72a23dda4ac1abc04c18e0a6804db5f2328119c7405a1afc270`  
		Last Modified: Thu, 12 Jan 2023 19:12:19 GMT  
		Size: 7.6 MB (7606508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad67a89f4f431486ce9614130f4b5ff359c8ab0768b3e4f11c8ce9d078e468f`  
		Last Modified: Thu, 12 Jan 2023 19:12:17 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3-alpine3.17` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:a18180bcf3ee4fd4ddd70dd214370047bd0e33487851a6cf6ecae7427a064e45
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10566568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d25170c44e27af0a0906eefe45b5dcbaad99dde54a239e10075ebf1edcd9c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:49:24 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:49:27 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:49:27 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:49:27 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:49:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:49:28 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccd7571b47c7e88a2cff65164de4ba606baf3d6069487b86ba20ac11cc42a80`  
		Last Modified: Thu, 12 Jan 2023 19:50:24 GMT  
		Size: 7.3 MB (7306905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5316848d8cf6c4c6d16f1aae150150c6a8e1ef991c0230af062e9bcde9a1dc13`  
		Last Modified: Thu, 12 Jan 2023 19:50:23 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25.3-linux`

```console
$ docker pull nats-streaming@sha256:434a215ccaac82dfe96c194c8cf0d842feb49c92f49d5da6a2d8ffb029141c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:0.25.3-linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:1a8745712d00a54265c8552863b8d15a568b138368f4fcb090c075e361124c14
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7666171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a48bccf54f8248bddd0509da6d1cc1fe8b97638f6120c98e4c9fb191f6f1723`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:31:40 GMT
COPY file:379a895964ce5e0c1d6e137ee5ee8f0cbfb7fdbb8cb20ace28a5de2e106737eb in /nats-streaming-server 
# Thu, 12 Jan 2023 19:31:40 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:31:41 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:31:41 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:27e278d5ae53768a5d47168e25eb6824c8445f2866af5ea11943739d93ce14dd`  
		Last Modified: Thu, 12 Jan 2023 19:32:24 GMT  
		Size: 7.7 MB (7666171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3-linux` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:50a79015fcbe577e98cb5ef0083d388922974261b0fb10ea73869e3350b6f43b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7329068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1e2302229108f5014008299e824b0108e469ec9c7a96816d72f226fae6abfb`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 18:57:18 GMT
COPY file:1214576567fc0305b3b6ac3e280bb8d103f74aee2edde4b083a56167e41f0ed6 in /nats-streaming-server 
# Thu, 12 Jan 2023 18:57:18 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 18:57:18 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 18:57:18 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:c76ebdda577d691c315b52196919494198f01e7e8a34dac185a83423d3954e4f`  
		Last Modified: Thu, 12 Jan 2023 18:58:31 GMT  
		Size: 7.3 MB (7329068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3-linux` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:f9a1149ee423fde34350a83aba253a8825e9bcc08b0e58dd8cc29961cea0a779
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7318728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d189f7022493db7a0fe5dca6e1f09b17789835f946910d896c052399409f95e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:11:30 GMT
COPY file:58653f0fa67e6667e5ec024a8b7912bc01a12570dac2c7550d04c2e617252bf1 in /nats-streaming-server 
# Thu, 12 Jan 2023 19:11:30 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:11:30 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:11:30 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:edc8f5310312ee44896e1639c9af8d17c77c9fc7cfad03f8c1268ab57def8348`  
		Last Modified: Thu, 12 Jan 2023 19:12:45 GMT  
		Size: 7.3 MB (7318728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3-linux` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:56dfb1bed3b56ea0b72be1b79a49422abdde1189777ebfb55eda7223819eb6d3
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7019428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7533789a178d97f2445ccdb62e46c98a1cec7249342ad21b5c40f38ee0652bff`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:49:56 GMT
COPY file:33b7386a5076cd63bc03cf5c4de0f89afe8fd8034e8fd3a792715c6cb567514b in /nats-streaming-server 
# Thu, 12 Jan 2023 19:49:56 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:49:56 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:49:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:b7cbef42b1eb11c382f636b05c7fea54926364454d6b2727ea8e52f63785a536`  
		Last Modified: Thu, 12 Jan 2023 19:50:42 GMT  
		Size: 7.0 MB (7019428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25.3-nanoserver`

```console
$ docker pull nats-streaming@sha256:215774d152726880fa2353032d6ee9247b41492d6dfc6e4cfd0e49c6f65aa090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats-streaming:0.25.3-nanoserver` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats-streaming@sha256:64576300bdd06e880521f0a807d6e949a8f68dd2b289e18a1edecb7e9e071b7f
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114465156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd5c5b69b4a950617a8fd5be371053e50b7abefbcb15affdede25e649a56d9f`
-	Entrypoint: `["C:\\nats-streaming-server.exe"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 19:37:42 GMT
RUN cmd /S /C #(nop) COPY file:849c881d7b0e5994559eaa48b9cc851618ba91f60a4b0e8cb48b89862fd563c8 in C:\nats-streaming-server.exe 
# Thu, 12 Jan 2023 19:37:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-streaming-server.exe"]
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  CMD ["-m" "8222"]
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
	-	`sha256:b0c4c912ef8472df8c3ff7ba3e36810ea5251a7898c9f9899d3453a9589af308`  
		Last Modified: Thu, 12 Jan 2023 19:38:24 GMT  
		Size: 7.8 MB (7794427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7646262117969651479b14b578b7c256dfc4dc99b8f4101a437ad610098fad`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295fc6bf226795abb927ba28dd663f1a9750578f5be1668cb1dce37b01bcfda5`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7789d0a8c721a9cdf17cea2c4ac33ec001cd33ade5f82d1c4c45a63a5e6f2d0`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25.3-nanoserver-1809`

```console
$ docker pull nats-streaming@sha256:215774d152726880fa2353032d6ee9247b41492d6dfc6e4cfd0e49c6f65aa090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats-streaming:0.25.3-nanoserver-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats-streaming@sha256:64576300bdd06e880521f0a807d6e949a8f68dd2b289e18a1edecb7e9e071b7f
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114465156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd5c5b69b4a950617a8fd5be371053e50b7abefbcb15affdede25e649a56d9f`
-	Entrypoint: `["C:\\nats-streaming-server.exe"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 19:37:42 GMT
RUN cmd /S /C #(nop) COPY file:849c881d7b0e5994559eaa48b9cc851618ba91f60a4b0e8cb48b89862fd563c8 in C:\nats-streaming-server.exe 
# Thu, 12 Jan 2023 19:37:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-streaming-server.exe"]
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  CMD ["-m" "8222"]
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
	-	`sha256:b0c4c912ef8472df8c3ff7ba3e36810ea5251a7898c9f9899d3453a9589af308`  
		Last Modified: Thu, 12 Jan 2023 19:38:24 GMT  
		Size: 7.8 MB (7794427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7646262117969651479b14b578b7c256dfc4dc99b8f4101a437ad610098fad`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295fc6bf226795abb927ba28dd663f1a9750578f5be1668cb1dce37b01bcfda5`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7789d0a8c721a9cdf17cea2c4ac33ec001cd33ade5f82d1c4c45a63a5e6f2d0`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25.3-scratch`

```console
$ docker pull nats-streaming@sha256:434a215ccaac82dfe96c194c8cf0d842feb49c92f49d5da6a2d8ffb029141c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:0.25.3-scratch` - linux; amd64

```console
$ docker pull nats-streaming@sha256:1a8745712d00a54265c8552863b8d15a568b138368f4fcb090c075e361124c14
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7666171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a48bccf54f8248bddd0509da6d1cc1fe8b97638f6120c98e4c9fb191f6f1723`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:31:40 GMT
COPY file:379a895964ce5e0c1d6e137ee5ee8f0cbfb7fdbb8cb20ace28a5de2e106737eb in /nats-streaming-server 
# Thu, 12 Jan 2023 19:31:40 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:31:41 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:31:41 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:27e278d5ae53768a5d47168e25eb6824c8445f2866af5ea11943739d93ce14dd`  
		Last Modified: Thu, 12 Jan 2023 19:32:24 GMT  
		Size: 7.7 MB (7666171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3-scratch` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:50a79015fcbe577e98cb5ef0083d388922974261b0fb10ea73869e3350b6f43b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7329068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1e2302229108f5014008299e824b0108e469ec9c7a96816d72f226fae6abfb`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 18:57:18 GMT
COPY file:1214576567fc0305b3b6ac3e280bb8d103f74aee2edde4b083a56167e41f0ed6 in /nats-streaming-server 
# Thu, 12 Jan 2023 18:57:18 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 18:57:18 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 18:57:18 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:c76ebdda577d691c315b52196919494198f01e7e8a34dac185a83423d3954e4f`  
		Last Modified: Thu, 12 Jan 2023 18:58:31 GMT  
		Size: 7.3 MB (7329068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3-scratch` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:f9a1149ee423fde34350a83aba253a8825e9bcc08b0e58dd8cc29961cea0a779
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7318728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d189f7022493db7a0fe5dca6e1f09b17789835f946910d896c052399409f95e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:11:30 GMT
COPY file:58653f0fa67e6667e5ec024a8b7912bc01a12570dac2c7550d04c2e617252bf1 in /nats-streaming-server 
# Thu, 12 Jan 2023 19:11:30 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:11:30 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:11:30 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:edc8f5310312ee44896e1639c9af8d17c77c9fc7cfad03f8c1268ab57def8348`  
		Last Modified: Thu, 12 Jan 2023 19:12:45 GMT  
		Size: 7.3 MB (7318728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.25.3-scratch` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:56dfb1bed3b56ea0b72be1b79a49422abdde1189777ebfb55eda7223819eb6d3
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7019428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7533789a178d97f2445ccdb62e46c98a1cec7249342ad21b5c40f38ee0652bff`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:49:56 GMT
COPY file:33b7386a5076cd63bc03cf5c4de0f89afe8fd8034e8fd3a792715c6cb567514b in /nats-streaming-server 
# Thu, 12 Jan 2023 19:49:56 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:49:56 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:49:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:b7cbef42b1eb11c382f636b05c7fea54926364454d6b2727ea8e52f63785a536`  
		Last Modified: Thu, 12 Jan 2023 19:50:42 GMT  
		Size: 7.0 MB (7019428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25.3-windowsservercore`

```console
$ docker pull nats-streaming@sha256:6471642e87b0f2179b40bf84dbf745f749cb4a7ef5a954f8ab332e0d64765570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats-streaming:0.25.3-windowsservercore` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats-streaming@sha256:70ad73e4b756edcbc985d8520fdc3ab8ea1525157b2eb059b7db9a7e3daa8552
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1716446395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02988cc96a47099def39eb6249f0d28bcd0d5ea2d242ed0489965a79a6e15b4a`
-	Entrypoint: `["C:\\nats-streaming-server.exe"]`
-	Default Command: `["-m","8222"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 04:59:53 GMT
ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 19:35:27 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:35:28 GMT
ENV NATS_STREAMING_SERVER_DOWNLOAD=https://github.com/nats-io/nats-streaming-server/releases/download/v0.25.3/nats-streaming-server-v0.25.3-windows-amd64.zip
# Thu, 12 Jan 2023 19:35:29 GMT
ENV NATS_STREAMING_SERVER_SHASUM=b25aab68b84cba76e3edec5d524d2a792f460127d159ecb4d2e6168c7635c10c
# Thu, 12 Jan 2023 19:36:00 GMT
RUN Set-PSDebug -Trace 2
# Thu, 12 Jan 2023 19:37:26 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_STREAMING_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_STREAMING_SERVER_DOWNLOAD -OutFile nats-streaming.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_STREAMING_SERVER_SHASUM); 	if ((Get-FileHash nats-streaming.zip -Algorithm sha256).Hash -ne $env:NATS_STREAMING_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats-streaming.zip'; 	Expand-Archive -Path 'nats-streaming.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-streaming-server-v*/nats-streaming-server.exe -Destination C:\\nats-streaming-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats-streaming.zip; 	Remove-Item -Recurse -Force nats-streaming-server-v*; 		Write-Host 'complete.';
# Thu, 12 Jan 2023 19:37:27 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:37:28 GMT
ENTRYPOINT ["C:\\nats-streaming-server.exe"]
# Thu, 12 Jan 2023 19:37:29 GMT
CMD ["-m" "8222"]
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
	-	`sha256:6fd9032615dc83ca4276a5ffdc4ecc61dfeb64682e26712951e8820f2a29ac39`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fb93f8164bb100adb936c7218b29a3b9678140cbe0ac5c5d661edad54e81d2`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43ca3eaac11d9f34e2992c082a5303ea13396e1d983e0f015b06771b71e6fa6`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9733d6881b1cd7c645acb678f7bff47e402c10f2d4c5be4c34fe863b946e5871`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 360.6 KB (360637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9330481bc2a56887b902bf3f75ec4c856b795e5453535cb85374a3a9525065ee`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 8.1 MB (8130582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94aec9f07717905305aae4f3889113bcc7b9773cb6f2fd4ad8f80128b1425a4`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81f6759a805ceacad16448c19944436e09acaace2aa88a18ded3133abe96ad7`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4acef17f04e700c48c45e8371346cd5e9c1f0d22dd3fa8f6b563b7459eb564`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.25.3-windowsservercore-1809`

```console
$ docker pull nats-streaming@sha256:6471642e87b0f2179b40bf84dbf745f749cb4a7ef5a954f8ab332e0d64765570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats-streaming:0.25.3-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats-streaming@sha256:70ad73e4b756edcbc985d8520fdc3ab8ea1525157b2eb059b7db9a7e3daa8552
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1716446395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02988cc96a47099def39eb6249f0d28bcd0d5ea2d242ed0489965a79a6e15b4a`
-	Entrypoint: `["C:\\nats-streaming-server.exe"]`
-	Default Command: `["-m","8222"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 04:59:53 GMT
ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 19:35:27 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:35:28 GMT
ENV NATS_STREAMING_SERVER_DOWNLOAD=https://github.com/nats-io/nats-streaming-server/releases/download/v0.25.3/nats-streaming-server-v0.25.3-windows-amd64.zip
# Thu, 12 Jan 2023 19:35:29 GMT
ENV NATS_STREAMING_SERVER_SHASUM=b25aab68b84cba76e3edec5d524d2a792f460127d159ecb4d2e6168c7635c10c
# Thu, 12 Jan 2023 19:36:00 GMT
RUN Set-PSDebug -Trace 2
# Thu, 12 Jan 2023 19:37:26 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_STREAMING_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_STREAMING_SERVER_DOWNLOAD -OutFile nats-streaming.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_STREAMING_SERVER_SHASUM); 	if ((Get-FileHash nats-streaming.zip -Algorithm sha256).Hash -ne $env:NATS_STREAMING_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats-streaming.zip'; 	Expand-Archive -Path 'nats-streaming.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-streaming-server-v*/nats-streaming-server.exe -Destination C:\\nats-streaming-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats-streaming.zip; 	Remove-Item -Recurse -Force nats-streaming-server-v*; 		Write-Host 'complete.';
# Thu, 12 Jan 2023 19:37:27 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:37:28 GMT
ENTRYPOINT ["C:\\nats-streaming-server.exe"]
# Thu, 12 Jan 2023 19:37:29 GMT
CMD ["-m" "8222"]
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
	-	`sha256:6fd9032615dc83ca4276a5ffdc4ecc61dfeb64682e26712951e8820f2a29ac39`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fb93f8164bb100adb936c7218b29a3b9678140cbe0ac5c5d661edad54e81d2`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43ca3eaac11d9f34e2992c082a5303ea13396e1d983e0f015b06771b71e6fa6`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9733d6881b1cd7c645acb678f7bff47e402c10f2d4c5be4c34fe863b946e5871`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 360.6 KB (360637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9330481bc2a56887b902bf3f75ec4c856b795e5453535cb85374a3a9525065ee`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 8.1 MB (8130582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94aec9f07717905305aae4f3889113bcc7b9773cb6f2fd4ad8f80128b1425a4`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81f6759a805ceacad16448c19944436e09acaace2aa88a18ded3133abe96ad7`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4acef17f04e700c48c45e8371346cd5e9c1f0d22dd3fa8f6b563b7459eb564`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:alpine`

```console
$ docker pull nats-streaming@sha256:f72cdce9bf2a02d0fc29b06825b29cd6fa25c358156d2ddce2dfa99d83a235fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:alpine` - linux; amd64

```console
$ docker pull nats-streaming@sha256:59d11c638931fb0685a2dd617463e0637982c161307d8f473a5f6e9eee170fec
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11322617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9172ec3b28bc8578e5ffaff6f922c057a44990b048c54f6d395e0a6f9c6d61fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:30:42 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:30:44 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:30:44 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:30:44 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:30:44 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a76660bc575b193154f1d8913541b8774fd49551876bd772988e4bd985028b`  
		Last Modified: Thu, 12 Jan 2023 19:32:05 GMT  
		Size: 8.0 MB (7951569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2878d00f4f719975f6748ae85d5132a34b162c7959cc324e70ed53d73518ab4d`  
		Last Modified: Thu, 12 Jan 2023 19:32:04 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:alpine` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:3e996350dee075f2445e7b567aa875f2662fbd43278ffd9eb4affb4e876c6f03
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10722328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c061671b7e00ca5143fc1acb3fa56242c313a8ebcd7ddf6bff53780b6a00aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 18:57:05 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 18:57:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 18:57:08 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 18:57:08 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 18:57:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 18:57:09 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7adc39ea168192d899327c397b0f96390aa58fe49b9c369f222bef3da2390e0`  
		Last Modified: Thu, 12 Jan 2023 18:58:05 GMT  
		Size: 7.6 MB (7614664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d066baf2e6f26294ced64ff7248b0938ee4c5f3c1655b61749300fa9e811875`  
		Last Modified: Thu, 12 Jan 2023 18:58:03 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:alpine` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:f129c01e4a5f63bf87a8563a815f3f15f181e28a0121ef3592904fee0b561f22
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10472138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aee635b9b19bf3dc2f270c1ba18f256f1b8071d888b74516dc2f539a48f3a6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:11:01 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:11:04 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:11:04 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:11:04 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:11:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:11:04 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e647d25acb1cd72a23dda4ac1abc04c18e0a6804db5f2328119c7405a1afc270`  
		Last Modified: Thu, 12 Jan 2023 19:12:19 GMT  
		Size: 7.6 MB (7606508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad67a89f4f431486ce9614130f4b5ff359c8ab0768b3e4f11c8ce9d078e468f`  
		Last Modified: Thu, 12 Jan 2023 19:12:17 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:alpine` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:a18180bcf3ee4fd4ddd70dd214370047bd0e33487851a6cf6ecae7427a064e45
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10566568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d25170c44e27af0a0906eefe45b5dcbaad99dde54a239e10075ebf1edcd9c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:49:24 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:49:27 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:49:27 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:49:27 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:49:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:49:28 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccd7571b47c7e88a2cff65164de4ba606baf3d6069487b86ba20ac11cc42a80`  
		Last Modified: Thu, 12 Jan 2023 19:50:24 GMT  
		Size: 7.3 MB (7306905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5316848d8cf6c4c6d16f1aae150150c6a8e1ef991c0230af062e9bcde9a1dc13`  
		Last Modified: Thu, 12 Jan 2023 19:50:23 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:alpine3.17`

```console
$ docker pull nats-streaming@sha256:f72cdce9bf2a02d0fc29b06825b29cd6fa25c358156d2ddce2dfa99d83a235fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:alpine3.17` - linux; amd64

```console
$ docker pull nats-streaming@sha256:59d11c638931fb0685a2dd617463e0637982c161307d8f473a5f6e9eee170fec
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11322617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9172ec3b28bc8578e5ffaff6f922c057a44990b048c54f6d395e0a6f9c6d61fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:30:42 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:30:44 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:30:44 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:30:44 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:30:44 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a76660bc575b193154f1d8913541b8774fd49551876bd772988e4bd985028b`  
		Last Modified: Thu, 12 Jan 2023 19:32:05 GMT  
		Size: 8.0 MB (7951569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2878d00f4f719975f6748ae85d5132a34b162c7959cc324e70ed53d73518ab4d`  
		Last Modified: Thu, 12 Jan 2023 19:32:04 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:alpine3.17` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:3e996350dee075f2445e7b567aa875f2662fbd43278ffd9eb4affb4e876c6f03
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10722328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c061671b7e00ca5143fc1acb3fa56242c313a8ebcd7ddf6bff53780b6a00aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 18:57:05 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 18:57:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 18:57:08 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 18:57:08 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 18:57:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 18:57:09 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7adc39ea168192d899327c397b0f96390aa58fe49b9c369f222bef3da2390e0`  
		Last Modified: Thu, 12 Jan 2023 18:58:05 GMT  
		Size: 7.6 MB (7614664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d066baf2e6f26294ced64ff7248b0938ee4c5f3c1655b61749300fa9e811875`  
		Last Modified: Thu, 12 Jan 2023 18:58:03 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:alpine3.17` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:f129c01e4a5f63bf87a8563a815f3f15f181e28a0121ef3592904fee0b561f22
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10472138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aee635b9b19bf3dc2f270c1ba18f256f1b8071d888b74516dc2f539a48f3a6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:11:01 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:11:04 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:11:04 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:11:04 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:11:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:11:04 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e647d25acb1cd72a23dda4ac1abc04c18e0a6804db5f2328119c7405a1afc270`  
		Last Modified: Thu, 12 Jan 2023 19:12:19 GMT  
		Size: 7.6 MB (7606508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad67a89f4f431486ce9614130f4b5ff359c8ab0768b3e4f11c8ce9d078e468f`  
		Last Modified: Thu, 12 Jan 2023 19:12:17 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:alpine3.17` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:a18180bcf3ee4fd4ddd70dd214370047bd0e33487851a6cf6ecae7427a064e45
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10566568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d25170c44e27af0a0906eefe45b5dcbaad99dde54a239e10075ebf1edcd9c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Thu, 12 Jan 2023 19:49:24 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:49:27 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		aarch64) natsArch='arm64'; sha256='250dbab0595befb22a54804ec9be48537f22da0b6a5970e984d84c28d19f70d5' ;; 		armhf) natsArch='arm6'; sha256='27c74e261ccd1374da227e8c31184a8e98d0820bdd916e9a681be7fba12f7f09' ;; 		armv7) natsArch='arm7'; sha256='3db62df2019c947b54ea943ecaa5d1e34db6855247e53ec7c8ad46d0c206a6c4' ;; 		x86_64) natsArch='amd64'; sha256='ac5beb0e820af18e422bef12200012d86237b98872e0ed48c985426315b02cbb' ;; 		x86) natsArch='386'; sha256='887527bb48ab6029cbc1583cfd09e608148342e50e71851dbfa4c88aefb3fd39' ;; 		*) echo >&2 "error: $apkArch is not supported!"; exit 1 ;; 	esac; 		wget -O nats-streaming-server.tar.gz "https://github.com/nats-io/nats-streaming-server/releases/download/v${NATS_STREAMING_SERVER}/nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}.tar.gz"; 	echo "${sha256} *nats-streaming-server.tar.gz" | sha256sum -c -; 		apk add --no-cache ca-certificates; 		tar -xf nats-streaming-server.tar.gz; 	rm nats-streaming-server.tar.gz; 	mv "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}/nats-streaming-server" /usr/local/bin; 	rm -rf "nats-streaming-server-v${NATS_STREAMING_SERVER}-linux-${natsArch}"
# Thu, 12 Jan 2023 19:49:27 GMT
COPY file:528000310df8681fb95f43d3bcf7c8086cd514c78673b1aadb984b1db3331559 in /usr/local/bin 
# Thu, 12 Jan 2023 19:49:27 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:49:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 19:49:28 GMT
CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccd7571b47c7e88a2cff65164de4ba606baf3d6069487b86ba20ac11cc42a80`  
		Last Modified: Thu, 12 Jan 2023 19:50:24 GMT  
		Size: 7.3 MB (7306905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5316848d8cf6c4c6d16f1aae150150c6a8e1ef991c0230af062e9bcde9a1dc13`  
		Last Modified: Thu, 12 Jan 2023 19:50:23 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:8148751e53e78dd8b7a19516821244ff4537bd3b93d3783ed0a3abe29f410720
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.17763.3887; amd64

### `nats-streaming:latest` - linux; amd64

```console
$ docker pull nats-streaming@sha256:1a8745712d00a54265c8552863b8d15a568b138368f4fcb090c075e361124c14
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7666171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a48bccf54f8248bddd0509da6d1cc1fe8b97638f6120c98e4c9fb191f6f1723`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:31:40 GMT
COPY file:379a895964ce5e0c1d6e137ee5ee8f0cbfb7fdbb8cb20ace28a5de2e106737eb in /nats-streaming-server 
# Thu, 12 Jan 2023 19:31:40 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:31:41 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:31:41 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:27e278d5ae53768a5d47168e25eb6824c8445f2866af5ea11943739d93ce14dd`  
		Last Modified: Thu, 12 Jan 2023 19:32:24 GMT  
		Size: 7.7 MB (7666171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:50a79015fcbe577e98cb5ef0083d388922974261b0fb10ea73869e3350b6f43b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7329068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1e2302229108f5014008299e824b0108e469ec9c7a96816d72f226fae6abfb`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 18:57:18 GMT
COPY file:1214576567fc0305b3b6ac3e280bb8d103f74aee2edde4b083a56167e41f0ed6 in /nats-streaming-server 
# Thu, 12 Jan 2023 18:57:18 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 18:57:18 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 18:57:18 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:c76ebdda577d691c315b52196919494198f01e7e8a34dac185a83423d3954e4f`  
		Last Modified: Thu, 12 Jan 2023 18:58:31 GMT  
		Size: 7.3 MB (7329068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:f9a1149ee423fde34350a83aba253a8825e9bcc08b0e58dd8cc29961cea0a779
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7318728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d189f7022493db7a0fe5dca6e1f09b17789835f946910d896c052399409f95e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:11:30 GMT
COPY file:58653f0fa67e6667e5ec024a8b7912bc01a12570dac2c7550d04c2e617252bf1 in /nats-streaming-server 
# Thu, 12 Jan 2023 19:11:30 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:11:30 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:11:30 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:edc8f5310312ee44896e1639c9af8d17c77c9fc7cfad03f8c1268ab57def8348`  
		Last Modified: Thu, 12 Jan 2023 19:12:45 GMT  
		Size: 7.3 MB (7318728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:56dfb1bed3b56ea0b72be1b79a49422abdde1189777ebfb55eda7223819eb6d3
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7019428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7533789a178d97f2445ccdb62e46c98a1cec7249342ad21b5c40f38ee0652bff`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:49:56 GMT
COPY file:33b7386a5076cd63bc03cf5c4de0f89afe8fd8034e8fd3a792715c6cb567514b in /nats-streaming-server 
# Thu, 12 Jan 2023 19:49:56 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:49:56 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:49:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:b7cbef42b1eb11c382f636b05c7fea54926364454d6b2727ea8e52f63785a536`  
		Last Modified: Thu, 12 Jan 2023 19:50:42 GMT  
		Size: 7.0 MB (7019428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats-streaming@sha256:64576300bdd06e880521f0a807d6e949a8f68dd2b289e18a1edecb7e9e071b7f
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114465156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd5c5b69b4a950617a8fd5be371053e50b7abefbcb15affdede25e649a56d9f`
-	Entrypoint: `["C:\\nats-streaming-server.exe"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 19:37:42 GMT
RUN cmd /S /C #(nop) COPY file:849c881d7b0e5994559eaa48b9cc851618ba91f60a4b0e8cb48b89862fd563c8 in C:\nats-streaming-server.exe 
# Thu, 12 Jan 2023 19:37:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-streaming-server.exe"]
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  CMD ["-m" "8222"]
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
	-	`sha256:b0c4c912ef8472df8c3ff7ba3e36810ea5251a7898c9f9899d3453a9589af308`  
		Last Modified: Thu, 12 Jan 2023 19:38:24 GMT  
		Size: 7.8 MB (7794427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7646262117969651479b14b578b7c256dfc4dc99b8f4101a437ad610098fad`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295fc6bf226795abb927ba28dd663f1a9750578f5be1668cb1dce37b01bcfda5`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7789d0a8c721a9cdf17cea2c4ac33ec001cd33ade5f82d1c4c45a63a5e6f2d0`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:linux`

```console
$ docker pull nats-streaming@sha256:434a215ccaac82dfe96c194c8cf0d842feb49c92f49d5da6a2d8ffb029141c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:1a8745712d00a54265c8552863b8d15a568b138368f4fcb090c075e361124c14
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7666171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a48bccf54f8248bddd0509da6d1cc1fe8b97638f6120c98e4c9fb191f6f1723`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:31:40 GMT
COPY file:379a895964ce5e0c1d6e137ee5ee8f0cbfb7fdbb8cb20ace28a5de2e106737eb in /nats-streaming-server 
# Thu, 12 Jan 2023 19:31:40 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:31:41 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:31:41 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:27e278d5ae53768a5d47168e25eb6824c8445f2866af5ea11943739d93ce14dd`  
		Last Modified: Thu, 12 Jan 2023 19:32:24 GMT  
		Size: 7.7 MB (7666171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:50a79015fcbe577e98cb5ef0083d388922974261b0fb10ea73869e3350b6f43b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7329068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1e2302229108f5014008299e824b0108e469ec9c7a96816d72f226fae6abfb`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 18:57:18 GMT
COPY file:1214576567fc0305b3b6ac3e280bb8d103f74aee2edde4b083a56167e41f0ed6 in /nats-streaming-server 
# Thu, 12 Jan 2023 18:57:18 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 18:57:18 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 18:57:18 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:c76ebdda577d691c315b52196919494198f01e7e8a34dac185a83423d3954e4f`  
		Last Modified: Thu, 12 Jan 2023 18:58:31 GMT  
		Size: 7.3 MB (7329068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:f9a1149ee423fde34350a83aba253a8825e9bcc08b0e58dd8cc29961cea0a779
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7318728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d189f7022493db7a0fe5dca6e1f09b17789835f946910d896c052399409f95e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:11:30 GMT
COPY file:58653f0fa67e6667e5ec024a8b7912bc01a12570dac2c7550d04c2e617252bf1 in /nats-streaming-server 
# Thu, 12 Jan 2023 19:11:30 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:11:30 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:11:30 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:edc8f5310312ee44896e1639c9af8d17c77c9fc7cfad03f8c1268ab57def8348`  
		Last Modified: Thu, 12 Jan 2023 19:12:45 GMT  
		Size: 7.3 MB (7318728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:56dfb1bed3b56ea0b72be1b79a49422abdde1189777ebfb55eda7223819eb6d3
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7019428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7533789a178d97f2445ccdb62e46c98a1cec7249342ad21b5c40f38ee0652bff`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:49:56 GMT
COPY file:33b7386a5076cd63bc03cf5c4de0f89afe8fd8034e8fd3a792715c6cb567514b in /nats-streaming-server 
# Thu, 12 Jan 2023 19:49:56 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:49:56 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:49:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:b7cbef42b1eb11c382f636b05c7fea54926364454d6b2727ea8e52f63785a536`  
		Last Modified: Thu, 12 Jan 2023 19:50:42 GMT  
		Size: 7.0 MB (7019428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:215774d152726880fa2353032d6ee9247b41492d6dfc6e4cfd0e49c6f65aa090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats-streaming:nanoserver` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats-streaming@sha256:64576300bdd06e880521f0a807d6e949a8f68dd2b289e18a1edecb7e9e071b7f
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114465156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd5c5b69b4a950617a8fd5be371053e50b7abefbcb15affdede25e649a56d9f`
-	Entrypoint: `["C:\\nats-streaming-server.exe"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 19:37:42 GMT
RUN cmd /S /C #(nop) COPY file:849c881d7b0e5994559eaa48b9cc851618ba91f60a4b0e8cb48b89862fd563c8 in C:\nats-streaming-server.exe 
# Thu, 12 Jan 2023 19:37:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-streaming-server.exe"]
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  CMD ["-m" "8222"]
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
	-	`sha256:b0c4c912ef8472df8c3ff7ba3e36810ea5251a7898c9f9899d3453a9589af308`  
		Last Modified: Thu, 12 Jan 2023 19:38:24 GMT  
		Size: 7.8 MB (7794427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7646262117969651479b14b578b7c256dfc4dc99b8f4101a437ad610098fad`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295fc6bf226795abb927ba28dd663f1a9750578f5be1668cb1dce37b01bcfda5`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7789d0a8c721a9cdf17cea2c4ac33ec001cd33ade5f82d1c4c45a63a5e6f2d0`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:nanoserver-1809`

```console
$ docker pull nats-streaming@sha256:215774d152726880fa2353032d6ee9247b41492d6dfc6e4cfd0e49c6f65aa090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats-streaming:nanoserver-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats-streaming@sha256:64576300bdd06e880521f0a807d6e949a8f68dd2b289e18a1edecb7e9e071b7f
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114465156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd5c5b69b4a950617a8fd5be371053e50b7abefbcb15affdede25e649a56d9f`
-	Entrypoint: `["C:\\nats-streaming-server.exe"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 19:37:42 GMT
RUN cmd /S /C #(nop) COPY file:849c881d7b0e5994559eaa48b9cc851618ba91f60a4b0e8cb48b89862fd563c8 in C:\nats-streaming-server.exe 
# Thu, 12 Jan 2023 19:37:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-streaming-server.exe"]
# Thu, 12 Jan 2023 19:37:44 GMT
RUN cmd /S /C #(nop)  CMD ["-m" "8222"]
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
	-	`sha256:b0c4c912ef8472df8c3ff7ba3e36810ea5251a7898c9f9899d3453a9589af308`  
		Last Modified: Thu, 12 Jan 2023 19:38:24 GMT  
		Size: 7.8 MB (7794427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7646262117969651479b14b578b7c256dfc4dc99b8f4101a437ad610098fad`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295fc6bf226795abb927ba28dd663f1a9750578f5be1668cb1dce37b01bcfda5`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7789d0a8c721a9cdf17cea2c4ac33ec001cd33ade5f82d1c4c45a63a5e6f2d0`  
		Last Modified: Thu, 12 Jan 2023 19:38:22 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:scratch`

```console
$ docker pull nats-streaming@sha256:434a215ccaac82dfe96c194c8cf0d842feb49c92f49d5da6a2d8ffb029141c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:scratch` - linux; amd64

```console
$ docker pull nats-streaming@sha256:1a8745712d00a54265c8552863b8d15a568b138368f4fcb090c075e361124c14
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7666171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a48bccf54f8248bddd0509da6d1cc1fe8b97638f6120c98e4c9fb191f6f1723`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:31:40 GMT
COPY file:379a895964ce5e0c1d6e137ee5ee8f0cbfb7fdbb8cb20ace28a5de2e106737eb in /nats-streaming-server 
# Thu, 12 Jan 2023 19:31:40 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:31:41 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:31:41 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:27e278d5ae53768a5d47168e25eb6824c8445f2866af5ea11943739d93ce14dd`  
		Last Modified: Thu, 12 Jan 2023 19:32:24 GMT  
		Size: 7.7 MB (7666171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:scratch` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:50a79015fcbe577e98cb5ef0083d388922974261b0fb10ea73869e3350b6f43b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7329068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1e2302229108f5014008299e824b0108e469ec9c7a96816d72f226fae6abfb`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 18:57:18 GMT
COPY file:1214576567fc0305b3b6ac3e280bb8d103f74aee2edde4b083a56167e41f0ed6 in /nats-streaming-server 
# Thu, 12 Jan 2023 18:57:18 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 18:57:18 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 18:57:18 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:c76ebdda577d691c315b52196919494198f01e7e8a34dac185a83423d3954e4f`  
		Last Modified: Thu, 12 Jan 2023 18:58:31 GMT  
		Size: 7.3 MB (7329068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:scratch` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:f9a1149ee423fde34350a83aba253a8825e9bcc08b0e58dd8cc29961cea0a779
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7318728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d189f7022493db7a0fe5dca6e1f09b17789835f946910d896c052399409f95e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:11:30 GMT
COPY file:58653f0fa67e6667e5ec024a8b7912bc01a12570dac2c7550d04c2e617252bf1 in /nats-streaming-server 
# Thu, 12 Jan 2023 19:11:30 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:11:30 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:11:30 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:edc8f5310312ee44896e1639c9af8d17c77c9fc7cfad03f8c1268ab57def8348`  
		Last Modified: Thu, 12 Jan 2023 19:12:45 GMT  
		Size: 7.3 MB (7318728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:scratch` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:56dfb1bed3b56ea0b72be1b79a49422abdde1189777ebfb55eda7223819eb6d3
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7019428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7533789a178d97f2445ccdb62e46c98a1cec7249342ad21b5c40f38ee0652bff`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 12 Jan 2023 19:49:56 GMT
COPY file:33b7386a5076cd63bc03cf5c4de0f89afe8fd8034e8fd3a792715c6cb567514b in /nats-streaming-server 
# Thu, 12 Jan 2023 19:49:56 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:49:56 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 12 Jan 2023 19:49:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:b7cbef42b1eb11c382f636b05c7fea54926364454d6b2727ea8e52f63785a536`  
		Last Modified: Thu, 12 Jan 2023 19:50:42 GMT  
		Size: 7.0 MB (7019428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:6471642e87b0f2179b40bf84dbf745f749cb4a7ef5a954f8ab332e0d64765570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats-streaming@sha256:70ad73e4b756edcbc985d8520fdc3ab8ea1525157b2eb059b7db9a7e3daa8552
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1716446395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02988cc96a47099def39eb6249f0d28bcd0d5ea2d242ed0489965a79a6e15b4a`
-	Entrypoint: `["C:\\nats-streaming-server.exe"]`
-	Default Command: `["-m","8222"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 04:59:53 GMT
ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 19:35:27 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:35:28 GMT
ENV NATS_STREAMING_SERVER_DOWNLOAD=https://github.com/nats-io/nats-streaming-server/releases/download/v0.25.3/nats-streaming-server-v0.25.3-windows-amd64.zip
# Thu, 12 Jan 2023 19:35:29 GMT
ENV NATS_STREAMING_SERVER_SHASUM=b25aab68b84cba76e3edec5d524d2a792f460127d159ecb4d2e6168c7635c10c
# Thu, 12 Jan 2023 19:36:00 GMT
RUN Set-PSDebug -Trace 2
# Thu, 12 Jan 2023 19:37:26 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_STREAMING_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_STREAMING_SERVER_DOWNLOAD -OutFile nats-streaming.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_STREAMING_SERVER_SHASUM); 	if ((Get-FileHash nats-streaming.zip -Algorithm sha256).Hash -ne $env:NATS_STREAMING_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats-streaming.zip'; 	Expand-Archive -Path 'nats-streaming.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-streaming-server-v*/nats-streaming-server.exe -Destination C:\\nats-streaming-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats-streaming.zip; 	Remove-Item -Recurse -Force nats-streaming-server-v*; 		Write-Host 'complete.';
# Thu, 12 Jan 2023 19:37:27 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:37:28 GMT
ENTRYPOINT ["C:\\nats-streaming-server.exe"]
# Thu, 12 Jan 2023 19:37:29 GMT
CMD ["-m" "8222"]
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
	-	`sha256:6fd9032615dc83ca4276a5ffdc4ecc61dfeb64682e26712951e8820f2a29ac39`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fb93f8164bb100adb936c7218b29a3b9678140cbe0ac5c5d661edad54e81d2`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43ca3eaac11d9f34e2992c082a5303ea13396e1d983e0f015b06771b71e6fa6`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9733d6881b1cd7c645acb678f7bff47e402c10f2d4c5be4c34fe863b946e5871`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 360.6 KB (360637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9330481bc2a56887b902bf3f75ec4c856b795e5453535cb85374a3a9525065ee`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 8.1 MB (8130582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94aec9f07717905305aae4f3889113bcc7b9773cb6f2fd4ad8f80128b1425a4`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81f6759a805ceacad16448c19944436e09acaace2aa88a18ded3133abe96ad7`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4acef17f04e700c48c45e8371346cd5e9c1f0d22dd3fa8f6b563b7459eb564`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:windowsservercore-1809`

```console
$ docker pull nats-streaming@sha256:6471642e87b0f2179b40bf84dbf745f749cb4a7ef5a954f8ab332e0d64765570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `nats-streaming:windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats-streaming@sha256:70ad73e4b756edcbc985d8520fdc3ab8ea1525157b2eb059b7db9a7e3daa8552
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1716446395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02988cc96a47099def39eb6249f0d28bcd0d5ea2d242ed0489965a79a6e15b4a`
-	Entrypoint: `["C:\\nats-streaming-server.exe"]`
-	Default Command: `["-m","8222"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 04:59:53 GMT
ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 19:35:27 GMT
ENV NATS_STREAMING_SERVER=0.25.3
# Thu, 12 Jan 2023 19:35:28 GMT
ENV NATS_STREAMING_SERVER_DOWNLOAD=https://github.com/nats-io/nats-streaming-server/releases/download/v0.25.3/nats-streaming-server-v0.25.3-windows-amd64.zip
# Thu, 12 Jan 2023 19:35:29 GMT
ENV NATS_STREAMING_SERVER_SHASUM=b25aab68b84cba76e3edec5d524d2a792f460127d159ecb4d2e6168c7635c10c
# Thu, 12 Jan 2023 19:36:00 GMT
RUN Set-PSDebug -Trace 2
# Thu, 12 Jan 2023 19:37:26 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_STREAMING_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_STREAMING_SERVER_DOWNLOAD -OutFile nats-streaming.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_STREAMING_SERVER_SHASUM); 	if ((Get-FileHash nats-streaming.zip -Algorithm sha256).Hash -ne $env:NATS_STREAMING_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats-streaming.zip'; 	Expand-Archive -Path 'nats-streaming.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-streaming-server-v*/nats-streaming-server.exe -Destination C:\\nats-streaming-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats-streaming.zip; 	Remove-Item -Recurse -Force nats-streaming-server-v*; 		Write-Host 'complete.';
# Thu, 12 Jan 2023 19:37:27 GMT
EXPOSE 4222 8222
# Thu, 12 Jan 2023 19:37:28 GMT
ENTRYPOINT ["C:\\nats-streaming-server.exe"]
# Thu, 12 Jan 2023 19:37:29 GMT
CMD ["-m" "8222"]
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
	-	`sha256:6fd9032615dc83ca4276a5ffdc4ecc61dfeb64682e26712951e8820f2a29ac39`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fb93f8164bb100adb936c7218b29a3b9678140cbe0ac5c5d661edad54e81d2`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43ca3eaac11d9f34e2992c082a5303ea13396e1d983e0f015b06771b71e6fa6`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9733d6881b1cd7c645acb678f7bff47e402c10f2d4c5be4c34fe863b946e5871`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 360.6 KB (360637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9330481bc2a56887b902bf3f75ec4c856b795e5453535cb85374a3a9525065ee`  
		Last Modified: Thu, 12 Jan 2023 19:38:11 GMT  
		Size: 8.1 MB (8130582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94aec9f07717905305aae4f3889113bcc7b9773cb6f2fd4ad8f80128b1425a4`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81f6759a805ceacad16448c19944436e09acaace2aa88a18ded3133abe96ad7`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4acef17f04e700c48c45e8371346cd5e9c1f0d22dd3fa8f6b563b7459eb564`  
		Last Modified: Thu, 12 Jan 2023 19:38:09 GMT  
		Size: 1.4 KB (1417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
