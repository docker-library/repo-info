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
