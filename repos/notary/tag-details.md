<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `notary`

-	[`notary:server`](#notaryserver)
-	[`notary:server-0.7.0`](#notaryserver-070)
-	[`notary:signer`](#notarysigner)
-	[`notary:signer-0.7.0`](#notarysigner-070)

## `notary:server`

```console
$ docker pull notary@sha256:86bf3f0a2fab194fa1c279672eb0a89a45c8815116b4498961a45acfbb2e48ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:f31cfcc32cd35b3b000a6d4f90ac18406f8311255976f9fd31a80ffc0b6594f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7951757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ee151479f99297a9965ef0a6a8f16ade1cb73c9932b1c19e5b4e5b2acde6cc`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--version"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 06:38:02 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 06:38:02 GMT
EXPOSE map[4443/tcp:{}]
# Sat, 12 Nov 2022 06:38:02 GMT
ENV INSTALLDIR=/notary/server
# Sat, 12 Nov 2022 06:38:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 12 Nov 2022 06:38:02 GMT
WORKDIR /notary/server
# Wed, 11 Jan 2023 00:28:20 GMT
COPY /notary-server ./ # buildkit
# Wed, 11 Jan 2023 00:28:20 GMT
RUN ./notary-server --version # buildkit
# Wed, 11 Jan 2023 00:28:21 GMT
COPY ./server-config.json . # buildkit
# Wed, 11 Jan 2023 00:28:21 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:28:21 GMT
USER notary
# Wed, 11 Jan 2023 00:28:21 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:28:21 GMT
CMD ["notary-server" "--version"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab556644ad7457163fa974396862be0db6a3e9b2a288041b04e6009ae65f4ed`  
		Last Modified: Sat, 12 Nov 2022 06:38:20 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed42602a65127618c555766dddb85795b2a28b21875015cc78f009e503b964d`  
		Last Modified: Sat, 12 Nov 2022 06:38:18 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef06100438a2bf4e36e29814583a87c44dd3054d22576c60074012a581a4cba5`  
		Last Modified: Wed, 11 Jan 2023 00:28:37 GMT  
		Size: 5.1 MB (5143252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8936f6951e0b4c37477a0110a1c707c9086edf0a7a3bd95d8d8b60165974391c`  
		Last Modified: Wed, 11 Jan 2023 00:28:36 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659367c4e2ff2c5d63a9d5761542ca00485d105e36a1eb56320369e891004470`  
		Last Modified: Wed, 11 Jan 2023 00:28:36 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6e4c9abd9870c4741062598dcf0d14a0a931595b65ba60461e4cf257e4bf5e`  
		Last Modified: Wed, 11 Jan 2023 00:28:36 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server` - linux; arm variant v6

```console
$ docker pull notary@sha256:990e24e4516143f07984c93759f2aa16c406b96dc5826b652a571a5b7f7e3cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7506337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dec41bb8b48ef0ad58a6a2fdfa24dee00eb043af8833f8b996774199e69a34a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:49:18 GMT
ADD file:493290ed8856fa13463defe63da0d30ab3de5dde042c87ef7c0701d66ebb8892 in / 
# Sat, 12 Nov 2022 03:49:18 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:53:33 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 04:53:33 GMT
EXPOSE map[4443/tcp:{}]
# Sat, 12 Nov 2022 04:53:33 GMT
ENV INSTALLDIR=/notary/server
# Sat, 12 Nov 2022 04:53:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 12 Nov 2022 04:53:33 GMT
WORKDIR /notary/server
# Wed, 11 Jan 2023 00:30:41 GMT
COPY /notary-server ./ # buildkit
# Wed, 11 Jan 2023 00:30:41 GMT
RUN ./notary-server --version # buildkit
# Wed, 11 Jan 2023 00:30:42 GMT
COPY ./server-config.json . # buildkit
# Wed, 11 Jan 2023 00:30:42 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:30:42 GMT
USER notary
# Wed, 11 Jan 2023 00:30:42 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:30:42 GMT
CMD ["notary-server" "--version"]
```

-	Layers:
	-	`sha256:9616ea8c1de4a90b1a50591336485e88ae5c2346e0d778bdbe69b00647bf8e39`  
		Last Modified: Sat, 12 Nov 2022 03:50:12 GMT  
		Size: 2.6 MB (2615105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962f84bc6be5fe2d32e4441665bf4590588a5e805f0f4dc59ca7f20062278a1a`  
		Last Modified: Sat, 12 Nov 2022 04:54:08 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33090c22b1906904caf40830c2082f01799849efbaa3e099979f076f82c8b3a1`  
		Last Modified: Sat, 12 Nov 2022 04:54:05 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79490eb53b89724ff5621f21202a994f9480d8ddeaa0766ff7cf36e63d583040`  
		Last Modified: Wed, 11 Jan 2023 00:31:19 GMT  
		Size: 4.9 MB (4889032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f14c39dc3574387d450d5fe4a560fcab4941b75404dccf33213dff7af1f0e5`  
		Last Modified: Wed, 11 Jan 2023 00:31:18 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31dc47f03945c83694aca6811ee03b63d5226ecc9e446532f4d82596a897af9b`  
		Last Modified: Wed, 11 Jan 2023 00:31:18 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8e059865f11e5e17e17a934648df04c02e775563ce5d611fc6b6ea25519ffb`  
		Last Modified: Wed, 11 Jan 2023 00:31:18 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server` - linux; arm64 variant v8

```console
$ docker pull notary@sha256:dd801a67fd55542faa5989714d7665c14356713a4937386174aad58c181a9e19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7441051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f258f13595d84948b2002a8f91c09618546873220a274990d3b92e0afa562eba`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:39:38 GMT
ADD file:57d621536158358b14d15155826ef2dd4ca034278044111ec0aaf6717016e569 in / 
# Sat, 12 Nov 2022 03:39:38 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:36:49 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 04:36:49 GMT
EXPOSE map[4443/tcp:{}]
# Sat, 12 Nov 2022 04:36:49 GMT
ENV INSTALLDIR=/notary/server
# Sat, 12 Nov 2022 04:36:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 12 Nov 2022 04:36:49 GMT
WORKDIR /notary/server
# Wed, 11 Jan 2023 00:24:19 GMT
COPY /notary-server ./ # buildkit
# Wed, 11 Jan 2023 00:24:19 GMT
RUN ./notary-server --version # buildkit
# Wed, 11 Jan 2023 00:24:19 GMT
COPY ./server-config.json . # buildkit
# Wed, 11 Jan 2023 00:24:19 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:24:19 GMT
USER notary
# Wed, 11 Jan 2023 00:24:19 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:24:19 GMT
CMD ["notary-server" "--version"]
```

-	Layers:
	-	`sha256:6875df1f535433e5affe18ecfde9acb7950ab5f76887980ff06c5cdd48cf98f4`  
		Last Modified: Sat, 12 Nov 2022 03:40:05 GMT  
		Size: 2.7 MB (2707756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d302558fe89c8fe780469f0b8d23bc5062a020060a765fb3f2fbf0d7504a640`  
		Last Modified: Sat, 12 Nov 2022 04:37:07 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2765c49d0f6fd3ccbc844595f80ded29859b5546f880e4c2a30817ec85cf3`  
		Last Modified: Sat, 12 Nov 2022 04:37:05 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b191a51459334ad65edb737c523168014cd3f9a7a583cd288a24544ffc30afc`  
		Last Modified: Wed, 11 Jan 2023 00:24:36 GMT  
		Size: 4.7 MB (4731062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e6d6809cdd3dc05e73911f3dcac0c910a5ea38ed37c0de02614515a6233b06`  
		Last Modified: Wed, 11 Jan 2023 00:24:35 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a049a449628a3fa94a7045482002d0bc7327a7f0f09d61d2b6ee081613a18623`  
		Last Modified: Wed, 11 Jan 2023 00:24:35 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4040ea77e6deff97dc7292efa35748ac2c2ee9defbaf68982253cab86f72070`  
		Last Modified: Wed, 11 Jan 2023 00:24:35 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server` - linux; 386

```console
$ docker pull notary@sha256:0051a396f9f855c79af832411477a4c7d2378269fc49944bff0715d4fd0eccba
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7754948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230c21477b98b5a11af0491ebeeb38d1b540df1682e89ee33b1fa8d429f64a0a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:38:23 GMT
ADD file:561637cbdd23fdd69f555dbc938902d79be2b123eb244d2cfd35b337878b63df in / 
# Sat, 12 Nov 2022 03:38:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:57:54 GMT
RUN adduser -D -H -g "" notary
# Sat, 12 Nov 2022 04:57:55 GMT
EXPOSE 4443
# Sat, 12 Nov 2022 04:57:56 GMT
ENV INSTALLDIR=/notary/server
# Sat, 12 Nov 2022 04:57:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 12 Nov 2022 04:57:58 GMT
WORKDIR /notary/server
# Wed, 16 Nov 2022 20:11:14 GMT
COPY file:a4c6c805f5f0a0a5415c68f8471cb31bca1747a0f8e35cf5005cea98e0fba5b5 in ./ 
# Wed, 16 Nov 2022 20:11:14 GMT
RUN ./notary-server --version
# Wed, 16 Nov 2022 20:11:16 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Wed, 16 Nov 2022 20:11:17 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Wed, 16 Nov 2022 20:11:17 GMT
USER notary
# Wed, 16 Nov 2022 20:11:18 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 16 Nov 2022 20:11:19 GMT
CMD ["notary-server" "--version"]
```

-	Layers:
	-	`sha256:0c10ccf9426f4a034c81b9e1a0fa81fc5cd957d8a4e0ea545ee33f4cd59f227b`  
		Last Modified: Sat, 12 Nov 2022 03:39:07 GMT  
		Size: 2.8 MB (2808348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e2a37344f15c9c47f28fb76d0bbfae6f9adb65b4d686216a9a5881505ed0ec`  
		Last Modified: Sat, 12 Nov 2022 04:58:40 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9866a73f72dbc8d55f6da18666277753336525decc6cf3f5862f64f9aede0bb4`  
		Last Modified: Sat, 12 Nov 2022 04:58:40 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babe522935d5c7619a31b2dbe314aa999f9638f58cfd681d4ead6cf30174456e`  
		Last Modified: Wed, 16 Nov 2022 20:11:48 GMT  
		Size: 4.9 MB (4944492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cba96d642e8b023076db8e169e56c622fd46d71523562be43e6488fde467c1f`  
		Last Modified: Wed, 16 Nov 2022 20:11:47 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2526f0d6947677f3d4316cad2f10abb51443194ed1ba4f3d3b757a812041fd13`  
		Last Modified: Wed, 16 Nov 2022 20:11:47 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server` - linux; ppc64le

```console
$ docker pull notary@sha256:11c151b9b4da4033b1ef329402096cade396dd81953d622ef40717cac03c69cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7438170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec4a7732690b8055140b56caa47e849077c85a65112cf1f06d3453717fa8e25`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--version"]`

```dockerfile
# Sat, 12 Nov 2022 04:16:30 GMT
ADD file:6f7965319fe0caaea57086835c0c2212284c6850f33e3c4d522c758e43acbc98 in / 
# Sat, 12 Nov 2022 04:16:31 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 07:12:27 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 07:12:27 GMT
EXPOSE map[4443/tcp:{}]
# Sat, 12 Nov 2022 07:12:27 GMT
ENV INSTALLDIR=/notary/server
# Sat, 12 Nov 2022 07:12:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 12 Nov 2022 07:12:27 GMT
WORKDIR /notary/server
# Wed, 11 Jan 2023 00:34:27 GMT
COPY /notary-server ./ # buildkit
# Wed, 11 Jan 2023 00:34:27 GMT
RUN ./notary-server --version # buildkit
# Wed, 11 Jan 2023 00:34:28 GMT
COPY ./server-config.json . # buildkit
# Wed, 11 Jan 2023 00:34:28 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:34:28 GMT
USER notary
# Wed, 11 Jan 2023 00:34:28 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:34:28 GMT
CMD ["notary-server" "--version"]
```

-	Layers:
	-	`sha256:5c3a6ece62351976dfb4b56dc417aebd2a7dbda14ebac2737edd2ab43883553f`  
		Last Modified: Sat, 12 Nov 2022 04:17:14 GMT  
		Size: 2.8 MB (2801551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15023fe5082ace3d77a3ca4c98a9b31b5bef60a4835bddce618606ee9f17cf6`  
		Last Modified: Sat, 12 Nov 2022 07:13:02 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f15b402da893576104d72bedce0b38fd79217c0335b5c4ce1a6076cebbb1b8a`  
		Last Modified: Sat, 12 Nov 2022 07:12:59 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83598c98641df89168c689b5a5544eb47c20fe268fac165b3a3991374f5869b`  
		Last Modified: Wed, 11 Jan 2023 00:35:04 GMT  
		Size: 4.6 MB (4634388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87f398a819638b368af0c080a30450a975c3179f5a77e134686d560928ca93c`  
		Last Modified: Wed, 11 Jan 2023 00:35:03 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eab9cb545d457c31b42c3940dc6ef7ae068ebf9fc8715b0f7a4cef6d11c4b2d`  
		Last Modified: Wed, 11 Jan 2023 00:35:03 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f249b0c64141d81e53c3545ae2001788a0671d1511f217edc11164592f0192`  
		Last Modified: Wed, 11 Jan 2023 00:35:03 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server` - linux; s390x

```console
$ docker pull notary@sha256:9debea5fe03ecfe3b4add05332758e742a9bf5e3986ca08d0a0f84b92f7c1ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7563071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03d72d48e2a5b30bb760c09f6ffca8ff0730b10c807217341e2052e01229de26`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:42:05 GMT
ADD file:b78ae95cbacd853e398f187adaf3be51d9e301a66de8f7a4b6c60a9733075cb5 in / 
# Sat, 12 Nov 2022 03:42:06 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 05:29:11 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 05:29:11 GMT
EXPOSE map[4443/tcp:{}]
# Sat, 12 Nov 2022 05:29:11 GMT
ENV INSTALLDIR=/notary/server
# Sat, 12 Nov 2022 05:29:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 12 Nov 2022 05:29:11 GMT
WORKDIR /notary/server
# Wed, 11 Jan 2023 00:30:19 GMT
COPY /notary-server ./ # buildkit
# Wed, 11 Jan 2023 00:30:19 GMT
RUN ./notary-server --version # buildkit
# Wed, 11 Jan 2023 00:30:19 GMT
COPY ./server-config.json . # buildkit
# Wed, 11 Jan 2023 00:30:19 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:30:19 GMT
USER notary
# Wed, 11 Jan 2023 00:30:19 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:30:19 GMT
CMD ["notary-server" "--version"]
```

-	Layers:
	-	`sha256:cff16a5ffe2df97bc1d10b021c5ceb98bdb36a18a1d70395590444ac204a9b2b`  
		Last Modified: Sat, 12 Nov 2022 03:43:06 GMT  
		Size: 2.6 MB (2591126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4ef31691b8350e3f169efda08440ffc8f858999b921631575acdfd35d88225`  
		Last Modified: Sat, 12 Nov 2022 05:29:49 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba78ca725314efb5b67eb6424fd58fc99193e2ba05a043a971a5d7bb549454fa`  
		Last Modified: Sat, 12 Nov 2022 05:29:47 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88f89dd8b7bbef3fe275b0d91aac17e42b22d54c0dd8d12e73779ae75913973`  
		Last Modified: Wed, 11 Jan 2023 00:30:52 GMT  
		Size: 5.0 MB (4969712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a19461b79a55afb12ad8b21a8145b01591653124762d6cb42dbc8a602cf8af`  
		Last Modified: Wed, 11 Jan 2023 00:30:51 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c406ad9444785606decb7d2c63439186fbb35c102691a635698e1def5c2c8eb`  
		Last Modified: Wed, 11 Jan 2023 00:30:51 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b79958c20db5c7ccb6e19cc1df3469ad9dd89d208eb7dceb63149ee1344bc`  
		Last Modified: Wed, 11 Jan 2023 00:30:51 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.7.0`

```console
$ docker pull notary@sha256:86bf3f0a2fab194fa1c279672eb0a89a45c8815116b4498961a45acfbb2e48ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `notary:server-0.7.0` - linux; amd64

```console
$ docker pull notary@sha256:f31cfcc32cd35b3b000a6d4f90ac18406f8311255976f9fd31a80ffc0b6594f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7951757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ee151479f99297a9965ef0a6a8f16ade1cb73c9932b1c19e5b4e5b2acde6cc`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--version"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 06:38:02 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 06:38:02 GMT
EXPOSE map[4443/tcp:{}]
# Sat, 12 Nov 2022 06:38:02 GMT
ENV INSTALLDIR=/notary/server
# Sat, 12 Nov 2022 06:38:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 12 Nov 2022 06:38:02 GMT
WORKDIR /notary/server
# Wed, 11 Jan 2023 00:28:20 GMT
COPY /notary-server ./ # buildkit
# Wed, 11 Jan 2023 00:28:20 GMT
RUN ./notary-server --version # buildkit
# Wed, 11 Jan 2023 00:28:21 GMT
COPY ./server-config.json . # buildkit
# Wed, 11 Jan 2023 00:28:21 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:28:21 GMT
USER notary
# Wed, 11 Jan 2023 00:28:21 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:28:21 GMT
CMD ["notary-server" "--version"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab556644ad7457163fa974396862be0db6a3e9b2a288041b04e6009ae65f4ed`  
		Last Modified: Sat, 12 Nov 2022 06:38:20 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed42602a65127618c555766dddb85795b2a28b21875015cc78f009e503b964d`  
		Last Modified: Sat, 12 Nov 2022 06:38:18 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef06100438a2bf4e36e29814583a87c44dd3054d22576c60074012a581a4cba5`  
		Last Modified: Wed, 11 Jan 2023 00:28:37 GMT  
		Size: 5.1 MB (5143252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8936f6951e0b4c37477a0110a1c707c9086edf0a7a3bd95d8d8b60165974391c`  
		Last Modified: Wed, 11 Jan 2023 00:28:36 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659367c4e2ff2c5d63a9d5761542ca00485d105e36a1eb56320369e891004470`  
		Last Modified: Wed, 11 Jan 2023 00:28:36 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6e4c9abd9870c4741062598dcf0d14a0a931595b65ba60461e4cf257e4bf5e`  
		Last Modified: Wed, 11 Jan 2023 00:28:36 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server-0.7.0` - linux; arm variant v6

```console
$ docker pull notary@sha256:990e24e4516143f07984c93759f2aa16c406b96dc5826b652a571a5b7f7e3cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7506337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dec41bb8b48ef0ad58a6a2fdfa24dee00eb043af8833f8b996774199e69a34a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:49:18 GMT
ADD file:493290ed8856fa13463defe63da0d30ab3de5dde042c87ef7c0701d66ebb8892 in / 
# Sat, 12 Nov 2022 03:49:18 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:53:33 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 04:53:33 GMT
EXPOSE map[4443/tcp:{}]
# Sat, 12 Nov 2022 04:53:33 GMT
ENV INSTALLDIR=/notary/server
# Sat, 12 Nov 2022 04:53:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 12 Nov 2022 04:53:33 GMT
WORKDIR /notary/server
# Wed, 11 Jan 2023 00:30:41 GMT
COPY /notary-server ./ # buildkit
# Wed, 11 Jan 2023 00:30:41 GMT
RUN ./notary-server --version # buildkit
# Wed, 11 Jan 2023 00:30:42 GMT
COPY ./server-config.json . # buildkit
# Wed, 11 Jan 2023 00:30:42 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:30:42 GMT
USER notary
# Wed, 11 Jan 2023 00:30:42 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:30:42 GMT
CMD ["notary-server" "--version"]
```

-	Layers:
	-	`sha256:9616ea8c1de4a90b1a50591336485e88ae5c2346e0d778bdbe69b00647bf8e39`  
		Last Modified: Sat, 12 Nov 2022 03:50:12 GMT  
		Size: 2.6 MB (2615105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962f84bc6be5fe2d32e4441665bf4590588a5e805f0f4dc59ca7f20062278a1a`  
		Last Modified: Sat, 12 Nov 2022 04:54:08 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33090c22b1906904caf40830c2082f01799849efbaa3e099979f076f82c8b3a1`  
		Last Modified: Sat, 12 Nov 2022 04:54:05 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79490eb53b89724ff5621f21202a994f9480d8ddeaa0766ff7cf36e63d583040`  
		Last Modified: Wed, 11 Jan 2023 00:31:19 GMT  
		Size: 4.9 MB (4889032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f14c39dc3574387d450d5fe4a560fcab4941b75404dccf33213dff7af1f0e5`  
		Last Modified: Wed, 11 Jan 2023 00:31:18 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31dc47f03945c83694aca6811ee03b63d5226ecc9e446532f4d82596a897af9b`  
		Last Modified: Wed, 11 Jan 2023 00:31:18 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8e059865f11e5e17e17a934648df04c02e775563ce5d611fc6b6ea25519ffb`  
		Last Modified: Wed, 11 Jan 2023 00:31:18 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server-0.7.0` - linux; arm64 variant v8

```console
$ docker pull notary@sha256:dd801a67fd55542faa5989714d7665c14356713a4937386174aad58c181a9e19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7441051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f258f13595d84948b2002a8f91c09618546873220a274990d3b92e0afa562eba`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:39:38 GMT
ADD file:57d621536158358b14d15155826ef2dd4ca034278044111ec0aaf6717016e569 in / 
# Sat, 12 Nov 2022 03:39:38 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:36:49 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 04:36:49 GMT
EXPOSE map[4443/tcp:{}]
# Sat, 12 Nov 2022 04:36:49 GMT
ENV INSTALLDIR=/notary/server
# Sat, 12 Nov 2022 04:36:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 12 Nov 2022 04:36:49 GMT
WORKDIR /notary/server
# Wed, 11 Jan 2023 00:24:19 GMT
COPY /notary-server ./ # buildkit
# Wed, 11 Jan 2023 00:24:19 GMT
RUN ./notary-server --version # buildkit
# Wed, 11 Jan 2023 00:24:19 GMT
COPY ./server-config.json . # buildkit
# Wed, 11 Jan 2023 00:24:19 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:24:19 GMT
USER notary
# Wed, 11 Jan 2023 00:24:19 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:24:19 GMT
CMD ["notary-server" "--version"]
```

-	Layers:
	-	`sha256:6875df1f535433e5affe18ecfde9acb7950ab5f76887980ff06c5cdd48cf98f4`  
		Last Modified: Sat, 12 Nov 2022 03:40:05 GMT  
		Size: 2.7 MB (2707756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d302558fe89c8fe780469f0b8d23bc5062a020060a765fb3f2fbf0d7504a640`  
		Last Modified: Sat, 12 Nov 2022 04:37:07 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2765c49d0f6fd3ccbc844595f80ded29859b5546f880e4c2a30817ec85cf3`  
		Last Modified: Sat, 12 Nov 2022 04:37:05 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b191a51459334ad65edb737c523168014cd3f9a7a583cd288a24544ffc30afc`  
		Last Modified: Wed, 11 Jan 2023 00:24:36 GMT  
		Size: 4.7 MB (4731062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e6d6809cdd3dc05e73911f3dcac0c910a5ea38ed37c0de02614515a6233b06`  
		Last Modified: Wed, 11 Jan 2023 00:24:35 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a049a449628a3fa94a7045482002d0bc7327a7f0f09d61d2b6ee081613a18623`  
		Last Modified: Wed, 11 Jan 2023 00:24:35 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4040ea77e6deff97dc7292efa35748ac2c2ee9defbaf68982253cab86f72070`  
		Last Modified: Wed, 11 Jan 2023 00:24:35 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server-0.7.0` - linux; 386

```console
$ docker pull notary@sha256:0051a396f9f855c79af832411477a4c7d2378269fc49944bff0715d4fd0eccba
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7754948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230c21477b98b5a11af0491ebeeb38d1b540df1682e89ee33b1fa8d429f64a0a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:38:23 GMT
ADD file:561637cbdd23fdd69f555dbc938902d79be2b123eb244d2cfd35b337878b63df in / 
# Sat, 12 Nov 2022 03:38:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:57:54 GMT
RUN adduser -D -H -g "" notary
# Sat, 12 Nov 2022 04:57:55 GMT
EXPOSE 4443
# Sat, 12 Nov 2022 04:57:56 GMT
ENV INSTALLDIR=/notary/server
# Sat, 12 Nov 2022 04:57:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 12 Nov 2022 04:57:58 GMT
WORKDIR /notary/server
# Wed, 16 Nov 2022 20:11:14 GMT
COPY file:a4c6c805f5f0a0a5415c68f8471cb31bca1747a0f8e35cf5005cea98e0fba5b5 in ./ 
# Wed, 16 Nov 2022 20:11:14 GMT
RUN ./notary-server --version
# Wed, 16 Nov 2022 20:11:16 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Wed, 16 Nov 2022 20:11:17 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Wed, 16 Nov 2022 20:11:17 GMT
USER notary
# Wed, 16 Nov 2022 20:11:18 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 16 Nov 2022 20:11:19 GMT
CMD ["notary-server" "--version"]
```

-	Layers:
	-	`sha256:0c10ccf9426f4a034c81b9e1a0fa81fc5cd957d8a4e0ea545ee33f4cd59f227b`  
		Last Modified: Sat, 12 Nov 2022 03:39:07 GMT  
		Size: 2.8 MB (2808348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e2a37344f15c9c47f28fb76d0bbfae6f9adb65b4d686216a9a5881505ed0ec`  
		Last Modified: Sat, 12 Nov 2022 04:58:40 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9866a73f72dbc8d55f6da18666277753336525decc6cf3f5862f64f9aede0bb4`  
		Last Modified: Sat, 12 Nov 2022 04:58:40 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babe522935d5c7619a31b2dbe314aa999f9638f58cfd681d4ead6cf30174456e`  
		Last Modified: Wed, 16 Nov 2022 20:11:48 GMT  
		Size: 4.9 MB (4944492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cba96d642e8b023076db8e169e56c622fd46d71523562be43e6488fde467c1f`  
		Last Modified: Wed, 16 Nov 2022 20:11:47 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2526f0d6947677f3d4316cad2f10abb51443194ed1ba4f3d3b757a812041fd13`  
		Last Modified: Wed, 16 Nov 2022 20:11:47 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server-0.7.0` - linux; ppc64le

```console
$ docker pull notary@sha256:11c151b9b4da4033b1ef329402096cade396dd81953d622ef40717cac03c69cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7438170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec4a7732690b8055140b56caa47e849077c85a65112cf1f06d3453717fa8e25`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--version"]`

```dockerfile
# Sat, 12 Nov 2022 04:16:30 GMT
ADD file:6f7965319fe0caaea57086835c0c2212284c6850f33e3c4d522c758e43acbc98 in / 
# Sat, 12 Nov 2022 04:16:31 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 07:12:27 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 07:12:27 GMT
EXPOSE map[4443/tcp:{}]
# Sat, 12 Nov 2022 07:12:27 GMT
ENV INSTALLDIR=/notary/server
# Sat, 12 Nov 2022 07:12:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 12 Nov 2022 07:12:27 GMT
WORKDIR /notary/server
# Wed, 11 Jan 2023 00:34:27 GMT
COPY /notary-server ./ # buildkit
# Wed, 11 Jan 2023 00:34:27 GMT
RUN ./notary-server --version # buildkit
# Wed, 11 Jan 2023 00:34:28 GMT
COPY ./server-config.json . # buildkit
# Wed, 11 Jan 2023 00:34:28 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:34:28 GMT
USER notary
# Wed, 11 Jan 2023 00:34:28 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:34:28 GMT
CMD ["notary-server" "--version"]
```

-	Layers:
	-	`sha256:5c3a6ece62351976dfb4b56dc417aebd2a7dbda14ebac2737edd2ab43883553f`  
		Last Modified: Sat, 12 Nov 2022 04:17:14 GMT  
		Size: 2.8 MB (2801551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15023fe5082ace3d77a3ca4c98a9b31b5bef60a4835bddce618606ee9f17cf6`  
		Last Modified: Sat, 12 Nov 2022 07:13:02 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f15b402da893576104d72bedce0b38fd79217c0335b5c4ce1a6076cebbb1b8a`  
		Last Modified: Sat, 12 Nov 2022 07:12:59 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83598c98641df89168c689b5a5544eb47c20fe268fac165b3a3991374f5869b`  
		Last Modified: Wed, 11 Jan 2023 00:35:04 GMT  
		Size: 4.6 MB (4634388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87f398a819638b368af0c080a30450a975c3179f5a77e134686d560928ca93c`  
		Last Modified: Wed, 11 Jan 2023 00:35:03 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eab9cb545d457c31b42c3940dc6ef7ae068ebf9fc8715b0f7a4cef6d11c4b2d`  
		Last Modified: Wed, 11 Jan 2023 00:35:03 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f249b0c64141d81e53c3545ae2001788a0671d1511f217edc11164592f0192`  
		Last Modified: Wed, 11 Jan 2023 00:35:03 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server-0.7.0` - linux; s390x

```console
$ docker pull notary@sha256:9debea5fe03ecfe3b4add05332758e742a9bf5e3986ca08d0a0f84b92f7c1ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7563071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03d72d48e2a5b30bb760c09f6ffca8ff0730b10c807217341e2052e01229de26`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:42:05 GMT
ADD file:b78ae95cbacd853e398f187adaf3be51d9e301a66de8f7a4b6c60a9733075cb5 in / 
# Sat, 12 Nov 2022 03:42:06 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 05:29:11 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 05:29:11 GMT
EXPOSE map[4443/tcp:{}]
# Sat, 12 Nov 2022 05:29:11 GMT
ENV INSTALLDIR=/notary/server
# Sat, 12 Nov 2022 05:29:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 12 Nov 2022 05:29:11 GMT
WORKDIR /notary/server
# Wed, 11 Jan 2023 00:30:19 GMT
COPY /notary-server ./ # buildkit
# Wed, 11 Jan 2023 00:30:19 GMT
RUN ./notary-server --version # buildkit
# Wed, 11 Jan 2023 00:30:19 GMT
COPY ./server-config.json . # buildkit
# Wed, 11 Jan 2023 00:30:19 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:30:19 GMT
USER notary
# Wed, 11 Jan 2023 00:30:19 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:30:19 GMT
CMD ["notary-server" "--version"]
```

-	Layers:
	-	`sha256:cff16a5ffe2df97bc1d10b021c5ceb98bdb36a18a1d70395590444ac204a9b2b`  
		Last Modified: Sat, 12 Nov 2022 03:43:06 GMT  
		Size: 2.6 MB (2591126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4ef31691b8350e3f169efda08440ffc8f858999b921631575acdfd35d88225`  
		Last Modified: Sat, 12 Nov 2022 05:29:49 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba78ca725314efb5b67eb6424fd58fc99193e2ba05a043a971a5d7bb549454fa`  
		Last Modified: Sat, 12 Nov 2022 05:29:47 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88f89dd8b7bbef3fe275b0d91aac17e42b22d54c0dd8d12e73779ae75913973`  
		Last Modified: Wed, 11 Jan 2023 00:30:52 GMT  
		Size: 5.0 MB (4969712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a19461b79a55afb12ad8b21a8145b01591653124762d6cb42dbc8a602cf8af`  
		Last Modified: Wed, 11 Jan 2023 00:30:51 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c406ad9444785606decb7d2c63439186fbb35c102691a635698e1def5c2c8eb`  
		Last Modified: Wed, 11 Jan 2023 00:30:51 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b79958c20db5c7ccb6e19cc1df3469ad9dd89d208eb7dceb63149ee1344bc`  
		Last Modified: Wed, 11 Jan 2023 00:30:51 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:f1a42940954660f67b843a5808c5f34d1c754495933757589f7c3c3d0e627129
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:f00c696380534b61fbf5e0c9137f0d2c475222c77b2a2b3090807c21dbf19480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7565648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120b11cd1c150c6e4e3c823fc330779f4984867eac70bd007f2f2599f6d01152`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--version"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 06:38:02 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 06:38:08 GMT
EXPOSE map[4444/tcp:{}]
# Sat, 12 Nov 2022 06:38:08 GMT
EXPOSE map[7899/tcp:{}]
# Sat, 12 Nov 2022 06:38:08 GMT
ENV INSTALLDIR=/notary/signer
# Sat, 12 Nov 2022 06:38:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 12 Nov 2022 06:38:08 GMT
WORKDIR /notary/signer
# Wed, 11 Jan 2023 00:28:27 GMT
COPY /notary-signer ./ # buildkit
# Wed, 11 Jan 2023 00:28:27 GMT
RUN ./notary-signer --version # buildkit
# Wed, 11 Jan 2023 00:28:28 GMT
COPY ./signer-config.json . # buildkit
# Wed, 11 Jan 2023 00:28:28 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:28:28 GMT
USER notary
# Wed, 11 Jan 2023 00:28:28 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:28:28 GMT
CMD ["notary-signer" "--version"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab556644ad7457163fa974396862be0db6a3e9b2a288041b04e6009ae65f4ed`  
		Last Modified: Sat, 12 Nov 2022 06:38:20 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da59cda2c120691b5be31fdc1571f10856ae5c4527c577ae2f76cd70fcd4a05`  
		Last Modified: Sat, 12 Nov 2022 06:38:29 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18df28869ba84e36cb24d2a6ffa9c8c495aadfd4a580bbc2fd32241b8d3e53bf`  
		Last Modified: Wed, 11 Jan 2023 00:28:47 GMT  
		Size: 4.8 MB (4757208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d38f8b72abfe9ed90b46e58eec6c1c29e3956676d9859f7df8ba7c9ccd8fb6`  
		Last Modified: Wed, 11 Jan 2023 00:28:46 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf34f3a2e8b14a03d0f25158b458b3ca10e626f01f0abee722308141866bbc95`  
		Last Modified: Wed, 11 Jan 2023 00:28:46 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8fa916538b7fae7415495c17ce06d7c5066d3fd40a5c5b7da79a6233f391b9`  
		Last Modified: Wed, 11 Jan 2023 00:28:46 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer` - linux; arm variant v6

```console
$ docker pull notary@sha256:afeda37dac2ea199e3d8c6e08c3819b8196d3fba7f65ea8ef7cf3439d25027f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7137627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d924d21c1f96abe7b086a87e3787da74750f47951c6733e3cfceac32ce6cfc14`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:49:18 GMT
ADD file:493290ed8856fa13463defe63da0d30ab3de5dde042c87ef7c0701d66ebb8892 in / 
# Sat, 12 Nov 2022 03:49:18 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:53:33 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 04:53:47 GMT
EXPOSE map[4444/tcp:{}]
# Sat, 12 Nov 2022 04:53:47 GMT
EXPOSE map[7899/tcp:{}]
# Sat, 12 Nov 2022 04:53:47 GMT
ENV INSTALLDIR=/notary/signer
# Sat, 12 Nov 2022 04:53:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 12 Nov 2022 04:53:47 GMT
WORKDIR /notary/signer
# Wed, 11 Jan 2023 00:30:56 GMT
COPY /notary-signer ./ # buildkit
# Wed, 11 Jan 2023 00:30:57 GMT
RUN ./notary-signer --version # buildkit
# Wed, 11 Jan 2023 00:30:57 GMT
COPY ./signer-config.json . # buildkit
# Wed, 11 Jan 2023 00:30:57 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:30:57 GMT
USER notary
# Wed, 11 Jan 2023 00:30:57 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:30:57 GMT
CMD ["notary-signer" "--version"]
```

-	Layers:
	-	`sha256:9616ea8c1de4a90b1a50591336485e88ae5c2346e0d778bdbe69b00647bf8e39`  
		Last Modified: Sat, 12 Nov 2022 03:50:12 GMT  
		Size: 2.6 MB (2615105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962f84bc6be5fe2d32e4441665bf4590588a5e805f0f4dc59ca7f20062278a1a`  
		Last Modified: Sat, 12 Nov 2022 04:54:08 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125649f53222ca94f2e22db8ba79ba38d7d33fee96be71c6f2a0e58b1045ac49`  
		Last Modified: Sat, 12 Nov 2022 04:54:19 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c176872dbb6a65d164a46c106be32edc7f50aa7d1c66ac20d3aafb5afb7dba9e`  
		Last Modified: Wed, 11 Jan 2023 00:31:31 GMT  
		Size: 4.5 MB (4520386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ed99dcb1f33ce9cc92eb20f851d758995238bb95a133b0451e0afa6f39b147`  
		Last Modified: Wed, 11 Jan 2023 00:31:30 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c52be738a8ab6a8ecf4ea0befd13e22ead1b8182b6bfcf0d48777b871d1372e`  
		Last Modified: Wed, 11 Jan 2023 00:31:30 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79bc4a847145db28503ac8baf84f15a2b74722d86419389999e41206b97b766c`  
		Last Modified: Wed, 11 Jan 2023 00:31:30 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer` - linux; arm64 variant v8

```console
$ docker pull notary@sha256:01ac08932344937fff3eebfb7c6cf60154b7b181d5938e26daae29ce4307a6a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7094543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdc3c2f1f3eedb94653facb4abb3ac4192ed4d6e114b0145c7fc35810a020442`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:39:38 GMT
ADD file:57d621536158358b14d15155826ef2dd4ca034278044111ec0aaf6717016e569 in / 
# Sat, 12 Nov 2022 03:39:38 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:36:49 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 04:36:54 GMT
EXPOSE map[4444/tcp:{}]
# Sat, 12 Nov 2022 04:36:54 GMT
EXPOSE map[7899/tcp:{}]
# Sat, 12 Nov 2022 04:36:54 GMT
ENV INSTALLDIR=/notary/signer
# Sat, 12 Nov 2022 04:36:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 12 Nov 2022 04:36:54 GMT
WORKDIR /notary/signer
# Wed, 11 Jan 2023 00:24:24 GMT
COPY /notary-signer ./ # buildkit
# Wed, 11 Jan 2023 00:24:25 GMT
RUN ./notary-signer --version # buildkit
# Wed, 11 Jan 2023 00:24:25 GMT
COPY ./signer-config.json . # buildkit
# Wed, 11 Jan 2023 00:24:25 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:24:25 GMT
USER notary
# Wed, 11 Jan 2023 00:24:25 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:24:25 GMT
CMD ["notary-signer" "--version"]
```

-	Layers:
	-	`sha256:6875df1f535433e5affe18ecfde9acb7950ab5f76887980ff06c5cdd48cf98f4`  
		Last Modified: Sat, 12 Nov 2022 03:40:05 GMT  
		Size: 2.7 MB (2707756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d302558fe89c8fe780469f0b8d23bc5062a020060a765fb3f2fbf0d7504a640`  
		Last Modified: Sat, 12 Nov 2022 04:37:07 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92adb73f02c38f4aa06f3e987ca18858a12b469b490a35a7fb86b341f2b68fb4`  
		Last Modified: Sat, 12 Nov 2022 04:37:16 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e215717a99b2757695faa23041cc743796899f2b33dfa7c0b57dc52a5e7f6a70`  
		Last Modified: Wed, 11 Jan 2023 00:24:45 GMT  
		Size: 4.4 MB (4384616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198a26833aca669dd715b305331ee981a96d63ff1d3204af8510b04ee49d68a5`  
		Last Modified: Wed, 11 Jan 2023 00:24:44 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24572dd92fc3157520e076ba375165e4bb8e6dfdeafd1d9690bb0c43aac88e15`  
		Last Modified: Wed, 11 Jan 2023 00:24:44 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c9085c1e60d791d09439af2802bf0d1f0a6ba6169061a54c6fb0ef6b638047`  
		Last Modified: Wed, 11 Jan 2023 00:24:44 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer` - linux; 386

```console
$ docker pull notary@sha256:79b4c323f58cb5f6ea257c2af5204098abeea66bb6d3c60b46f4693e04741701
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7381566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ddf368d5d9c9179b534f7d9a67b82e27281f60554a17dc0820eabc3abfca32c`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:38:23 GMT
ADD file:561637cbdd23fdd69f555dbc938902d79be2b123eb244d2cfd35b337878b63df in / 
# Sat, 12 Nov 2022 03:38:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:57:54 GMT
RUN adduser -D -H -g "" notary
# Sat, 12 Nov 2022 04:58:12 GMT
EXPOSE 4444
# Sat, 12 Nov 2022 04:58:12 GMT
EXPOSE 7899
# Sat, 12 Nov 2022 04:58:13 GMT
ENV INSTALLDIR=/notary/signer
# Sat, 12 Nov 2022 04:58:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 12 Nov 2022 04:58:15 GMT
WORKDIR /notary/signer
# Wed, 16 Nov 2022 20:11:26 GMT
COPY file:044b2b6099382d2e11ff09d47c7a63f7cf3796f05317a8a2bbfed5d98c843503 in ./ 
# Wed, 16 Nov 2022 20:11:26 GMT
RUN ./notary-signer --version
# Wed, 16 Nov 2022 20:11:28 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Wed, 16 Nov 2022 20:11:29 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Wed, 16 Nov 2022 20:11:29 GMT
USER notary
# Wed, 16 Nov 2022 20:11:30 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 16 Nov 2022 20:11:31 GMT
CMD ["notary-signer" "--version"]
```

-	Layers:
	-	`sha256:0c10ccf9426f4a034c81b9e1a0fa81fc5cd957d8a4e0ea545ee33f4cd59f227b`  
		Last Modified: Sat, 12 Nov 2022 03:39:07 GMT  
		Size: 2.8 MB (2808348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e2a37344f15c9c47f28fb76d0bbfae6f9adb65b4d686216a9a5881505ed0ec`  
		Last Modified: Sat, 12 Nov 2022 04:58:40 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26472dc994c1e659b114a40b8becb18e4595de57079b3495843fe3ee077329d`  
		Last Modified: Sat, 12 Nov 2022 04:58:51 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77cc9f8b030709827b83734498c26e9c13fdcad73c1751041bf38760164b7c8`  
		Last Modified: Wed, 16 Nov 2022 20:11:58 GMT  
		Size: 4.6 MB (4571177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d739be5aa3edcc7ba9f282a037921fc7c54d03aa47497444165ee21ada1487a6`  
		Last Modified: Wed, 16 Nov 2022 20:11:57 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f6cc98121c6d6e23c455cc4891ee75f1d872207a89e3ff24c67d8eedf86dac`  
		Last Modified: Wed, 16 Nov 2022 20:11:58 GMT  
		Size: 383.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer` - linux; ppc64le

```console
$ docker pull notary@sha256:2b2cac51751dbe89a896622064b2b6daa113c9af5a44c68b092ffe41f1b2334f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7096889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f7d83174a997548fe80efaf19090e2ca8db1780da72697fd0e25fec0544cb5`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--version"]`

```dockerfile
# Sat, 12 Nov 2022 04:16:30 GMT
ADD file:6f7965319fe0caaea57086835c0c2212284c6850f33e3c4d522c758e43acbc98 in / 
# Sat, 12 Nov 2022 04:16:31 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 07:12:27 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 07:12:40 GMT
EXPOSE map[4444/tcp:{}]
# Sat, 12 Nov 2022 07:12:40 GMT
EXPOSE map[7899/tcp:{}]
# Sat, 12 Nov 2022 07:12:40 GMT
ENV INSTALLDIR=/notary/signer
# Sat, 12 Nov 2022 07:12:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 12 Nov 2022 07:12:40 GMT
WORKDIR /notary/signer
# Wed, 11 Jan 2023 00:34:42 GMT
COPY /notary-signer ./ # buildkit
# Wed, 11 Jan 2023 00:34:43 GMT
RUN ./notary-signer --version # buildkit
# Wed, 11 Jan 2023 00:34:44 GMT
COPY ./signer-config.json . # buildkit
# Wed, 11 Jan 2023 00:34:44 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:34:44 GMT
USER notary
# Wed, 11 Jan 2023 00:34:44 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:34:44 GMT
CMD ["notary-signer" "--version"]
```

-	Layers:
	-	`sha256:5c3a6ece62351976dfb4b56dc417aebd2a7dbda14ebac2737edd2ab43883553f`  
		Last Modified: Sat, 12 Nov 2022 04:17:14 GMT  
		Size: 2.8 MB (2801551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15023fe5082ace3d77a3ca4c98a9b31b5bef60a4835bddce618606ee9f17cf6`  
		Last Modified: Sat, 12 Nov 2022 07:13:02 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca3c7abc8ed18b90618dae3d8ed39fa05a0357ae27fab896191fb471938ae78`  
		Last Modified: Sat, 12 Nov 2022 07:13:14 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deee061c403b3386800e6c7e6923b535156333ff7487eba4829685703f26b077`  
		Last Modified: Wed, 11 Jan 2023 00:35:16 GMT  
		Size: 4.3 MB (4293169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105871502b0be8567633ecfebc62cb7b991169a9deab7511536215264306a237`  
		Last Modified: Wed, 11 Jan 2023 00:35:15 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c93a3c85bd91aacf3c678ee7161a59f4e917b935af370e2610d5a427db3f94`  
		Last Modified: Wed, 11 Jan 2023 00:35:15 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152baf0ef7c80edfa82907d1e9ab9aa1a72dea74d9a533f9b7ed79414953cb57`  
		Last Modified: Wed, 11 Jan 2023 00:35:15 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer` - linux; s390x

```console
$ docker pull notary@sha256:877f13fa6d5af101201fa45864d3a1b3d3abe72356ca492cfc1b648feeccffbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7194822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8614b7bb2a7a400538389c08bac14d7a46d9b6fdf80f8bd99e1815d71c54fe1d`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:42:05 GMT
ADD file:b78ae95cbacd853e398f187adaf3be51d9e301a66de8f7a4b6c60a9733075cb5 in / 
# Sat, 12 Nov 2022 03:42:06 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 05:29:11 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 05:29:25 GMT
EXPOSE map[4444/tcp:{}]
# Sat, 12 Nov 2022 05:29:25 GMT
EXPOSE map[7899/tcp:{}]
# Sat, 12 Nov 2022 05:29:25 GMT
ENV INSTALLDIR=/notary/signer
# Sat, 12 Nov 2022 05:29:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 12 Nov 2022 05:29:25 GMT
WORKDIR /notary/signer
# Wed, 11 Jan 2023 00:30:33 GMT
COPY /notary-signer ./ # buildkit
# Wed, 11 Jan 2023 00:30:33 GMT
RUN ./notary-signer --version # buildkit
# Wed, 11 Jan 2023 00:30:34 GMT
COPY ./signer-config.json . # buildkit
# Wed, 11 Jan 2023 00:30:34 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:30:34 GMT
USER notary
# Wed, 11 Jan 2023 00:30:34 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:30:34 GMT
CMD ["notary-signer" "--version"]
```

-	Layers:
	-	`sha256:cff16a5ffe2df97bc1d10b021c5ceb98bdb36a18a1d70395590444ac204a9b2b`  
		Last Modified: Sat, 12 Nov 2022 03:43:06 GMT  
		Size: 2.6 MB (2591126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4ef31691b8350e3f169efda08440ffc8f858999b921631575acdfd35d88225`  
		Last Modified: Sat, 12 Nov 2022 05:29:49 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab5959c551fe4b84515f58281a78c8105c856e6509e5d6d5f6140438605e776`  
		Last Modified: Sat, 12 Nov 2022 05:29:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516cbbd77461820fd3f5006bfa0c7ee3068d78984ab81374409fc4c2bb45444a`  
		Last Modified: Wed, 11 Jan 2023 00:30:59 GMT  
		Size: 4.6 MB (4601528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dc3ba967be9e332b9be4cbc4d422eb21bc20b88eae738b47f86a392d515027`  
		Last Modified: Wed, 11 Jan 2023 00:30:59 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fe85e777d0adadc47aecd49038b38ee9019fba8e72ceef682631a39e404bc6`  
		Last Modified: Wed, 11 Jan 2023 00:30:59 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5c27e1825e210f86f2523370e2a55713fc64afad8083b7201433ce26d7d278`  
		Last Modified: Wed, 11 Jan 2023 00:30:59 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.7.0`

```console
$ docker pull notary@sha256:f1a42940954660f67b843a5808c5f34d1c754495933757589f7c3c3d0e627129
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `notary:signer-0.7.0` - linux; amd64

```console
$ docker pull notary@sha256:f00c696380534b61fbf5e0c9137f0d2c475222c77b2a2b3090807c21dbf19480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7565648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120b11cd1c150c6e4e3c823fc330779f4984867eac70bd007f2f2599f6d01152`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--version"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 06:38:02 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 06:38:08 GMT
EXPOSE map[4444/tcp:{}]
# Sat, 12 Nov 2022 06:38:08 GMT
EXPOSE map[7899/tcp:{}]
# Sat, 12 Nov 2022 06:38:08 GMT
ENV INSTALLDIR=/notary/signer
# Sat, 12 Nov 2022 06:38:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 12 Nov 2022 06:38:08 GMT
WORKDIR /notary/signer
# Wed, 11 Jan 2023 00:28:27 GMT
COPY /notary-signer ./ # buildkit
# Wed, 11 Jan 2023 00:28:27 GMT
RUN ./notary-signer --version # buildkit
# Wed, 11 Jan 2023 00:28:28 GMT
COPY ./signer-config.json . # buildkit
# Wed, 11 Jan 2023 00:28:28 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:28:28 GMT
USER notary
# Wed, 11 Jan 2023 00:28:28 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:28:28 GMT
CMD ["notary-signer" "--version"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab556644ad7457163fa974396862be0db6a3e9b2a288041b04e6009ae65f4ed`  
		Last Modified: Sat, 12 Nov 2022 06:38:20 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da59cda2c120691b5be31fdc1571f10856ae5c4527c577ae2f76cd70fcd4a05`  
		Last Modified: Sat, 12 Nov 2022 06:38:29 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18df28869ba84e36cb24d2a6ffa9c8c495aadfd4a580bbc2fd32241b8d3e53bf`  
		Last Modified: Wed, 11 Jan 2023 00:28:47 GMT  
		Size: 4.8 MB (4757208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d38f8b72abfe9ed90b46e58eec6c1c29e3956676d9859f7df8ba7c9ccd8fb6`  
		Last Modified: Wed, 11 Jan 2023 00:28:46 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf34f3a2e8b14a03d0f25158b458b3ca10e626f01f0abee722308141866bbc95`  
		Last Modified: Wed, 11 Jan 2023 00:28:46 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8fa916538b7fae7415495c17ce06d7c5066d3fd40a5c5b7da79a6233f391b9`  
		Last Modified: Wed, 11 Jan 2023 00:28:46 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer-0.7.0` - linux; arm variant v6

```console
$ docker pull notary@sha256:afeda37dac2ea199e3d8c6e08c3819b8196d3fba7f65ea8ef7cf3439d25027f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7137627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d924d21c1f96abe7b086a87e3787da74750f47951c6733e3cfceac32ce6cfc14`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:49:18 GMT
ADD file:493290ed8856fa13463defe63da0d30ab3de5dde042c87ef7c0701d66ebb8892 in / 
# Sat, 12 Nov 2022 03:49:18 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:53:33 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 04:53:47 GMT
EXPOSE map[4444/tcp:{}]
# Sat, 12 Nov 2022 04:53:47 GMT
EXPOSE map[7899/tcp:{}]
# Sat, 12 Nov 2022 04:53:47 GMT
ENV INSTALLDIR=/notary/signer
# Sat, 12 Nov 2022 04:53:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 12 Nov 2022 04:53:47 GMT
WORKDIR /notary/signer
# Wed, 11 Jan 2023 00:30:56 GMT
COPY /notary-signer ./ # buildkit
# Wed, 11 Jan 2023 00:30:57 GMT
RUN ./notary-signer --version # buildkit
# Wed, 11 Jan 2023 00:30:57 GMT
COPY ./signer-config.json . # buildkit
# Wed, 11 Jan 2023 00:30:57 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:30:57 GMT
USER notary
# Wed, 11 Jan 2023 00:30:57 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:30:57 GMT
CMD ["notary-signer" "--version"]
```

-	Layers:
	-	`sha256:9616ea8c1de4a90b1a50591336485e88ae5c2346e0d778bdbe69b00647bf8e39`  
		Last Modified: Sat, 12 Nov 2022 03:50:12 GMT  
		Size: 2.6 MB (2615105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962f84bc6be5fe2d32e4441665bf4590588a5e805f0f4dc59ca7f20062278a1a`  
		Last Modified: Sat, 12 Nov 2022 04:54:08 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125649f53222ca94f2e22db8ba79ba38d7d33fee96be71c6f2a0e58b1045ac49`  
		Last Modified: Sat, 12 Nov 2022 04:54:19 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c176872dbb6a65d164a46c106be32edc7f50aa7d1c66ac20d3aafb5afb7dba9e`  
		Last Modified: Wed, 11 Jan 2023 00:31:31 GMT  
		Size: 4.5 MB (4520386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ed99dcb1f33ce9cc92eb20f851d758995238bb95a133b0451e0afa6f39b147`  
		Last Modified: Wed, 11 Jan 2023 00:31:30 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c52be738a8ab6a8ecf4ea0befd13e22ead1b8182b6bfcf0d48777b871d1372e`  
		Last Modified: Wed, 11 Jan 2023 00:31:30 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79bc4a847145db28503ac8baf84f15a2b74722d86419389999e41206b97b766c`  
		Last Modified: Wed, 11 Jan 2023 00:31:30 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer-0.7.0` - linux; arm64 variant v8

```console
$ docker pull notary@sha256:01ac08932344937fff3eebfb7c6cf60154b7b181d5938e26daae29ce4307a6a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7094543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdc3c2f1f3eedb94653facb4abb3ac4192ed4d6e114b0145c7fc35810a020442`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:39:38 GMT
ADD file:57d621536158358b14d15155826ef2dd4ca034278044111ec0aaf6717016e569 in / 
# Sat, 12 Nov 2022 03:39:38 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:36:49 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 04:36:54 GMT
EXPOSE map[4444/tcp:{}]
# Sat, 12 Nov 2022 04:36:54 GMT
EXPOSE map[7899/tcp:{}]
# Sat, 12 Nov 2022 04:36:54 GMT
ENV INSTALLDIR=/notary/signer
# Sat, 12 Nov 2022 04:36:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 12 Nov 2022 04:36:54 GMT
WORKDIR /notary/signer
# Wed, 11 Jan 2023 00:24:24 GMT
COPY /notary-signer ./ # buildkit
# Wed, 11 Jan 2023 00:24:25 GMT
RUN ./notary-signer --version # buildkit
# Wed, 11 Jan 2023 00:24:25 GMT
COPY ./signer-config.json . # buildkit
# Wed, 11 Jan 2023 00:24:25 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:24:25 GMT
USER notary
# Wed, 11 Jan 2023 00:24:25 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:24:25 GMT
CMD ["notary-signer" "--version"]
```

-	Layers:
	-	`sha256:6875df1f535433e5affe18ecfde9acb7950ab5f76887980ff06c5cdd48cf98f4`  
		Last Modified: Sat, 12 Nov 2022 03:40:05 GMT  
		Size: 2.7 MB (2707756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d302558fe89c8fe780469f0b8d23bc5062a020060a765fb3f2fbf0d7504a640`  
		Last Modified: Sat, 12 Nov 2022 04:37:07 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92adb73f02c38f4aa06f3e987ca18858a12b469b490a35a7fb86b341f2b68fb4`  
		Last Modified: Sat, 12 Nov 2022 04:37:16 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e215717a99b2757695faa23041cc743796899f2b33dfa7c0b57dc52a5e7f6a70`  
		Last Modified: Wed, 11 Jan 2023 00:24:45 GMT  
		Size: 4.4 MB (4384616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198a26833aca669dd715b305331ee981a96d63ff1d3204af8510b04ee49d68a5`  
		Last Modified: Wed, 11 Jan 2023 00:24:44 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24572dd92fc3157520e076ba375165e4bb8e6dfdeafd1d9690bb0c43aac88e15`  
		Last Modified: Wed, 11 Jan 2023 00:24:44 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c9085c1e60d791d09439af2802bf0d1f0a6ba6169061a54c6fb0ef6b638047`  
		Last Modified: Wed, 11 Jan 2023 00:24:44 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer-0.7.0` - linux; 386

```console
$ docker pull notary@sha256:79b4c323f58cb5f6ea257c2af5204098abeea66bb6d3c60b46f4693e04741701
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7381566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ddf368d5d9c9179b534f7d9a67b82e27281f60554a17dc0820eabc3abfca32c`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:38:23 GMT
ADD file:561637cbdd23fdd69f555dbc938902d79be2b123eb244d2cfd35b337878b63df in / 
# Sat, 12 Nov 2022 03:38:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:57:54 GMT
RUN adduser -D -H -g "" notary
# Sat, 12 Nov 2022 04:58:12 GMT
EXPOSE 4444
# Sat, 12 Nov 2022 04:58:12 GMT
EXPOSE 7899
# Sat, 12 Nov 2022 04:58:13 GMT
ENV INSTALLDIR=/notary/signer
# Sat, 12 Nov 2022 04:58:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 12 Nov 2022 04:58:15 GMT
WORKDIR /notary/signer
# Wed, 16 Nov 2022 20:11:26 GMT
COPY file:044b2b6099382d2e11ff09d47c7a63f7cf3796f05317a8a2bbfed5d98c843503 in ./ 
# Wed, 16 Nov 2022 20:11:26 GMT
RUN ./notary-signer --version
# Wed, 16 Nov 2022 20:11:28 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Wed, 16 Nov 2022 20:11:29 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Wed, 16 Nov 2022 20:11:29 GMT
USER notary
# Wed, 16 Nov 2022 20:11:30 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 16 Nov 2022 20:11:31 GMT
CMD ["notary-signer" "--version"]
```

-	Layers:
	-	`sha256:0c10ccf9426f4a034c81b9e1a0fa81fc5cd957d8a4e0ea545ee33f4cd59f227b`  
		Last Modified: Sat, 12 Nov 2022 03:39:07 GMT  
		Size: 2.8 MB (2808348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e2a37344f15c9c47f28fb76d0bbfae6f9adb65b4d686216a9a5881505ed0ec`  
		Last Modified: Sat, 12 Nov 2022 04:58:40 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26472dc994c1e659b114a40b8becb18e4595de57079b3495843fe3ee077329d`  
		Last Modified: Sat, 12 Nov 2022 04:58:51 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77cc9f8b030709827b83734498c26e9c13fdcad73c1751041bf38760164b7c8`  
		Last Modified: Wed, 16 Nov 2022 20:11:58 GMT  
		Size: 4.6 MB (4571177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d739be5aa3edcc7ba9f282a037921fc7c54d03aa47497444165ee21ada1487a6`  
		Last Modified: Wed, 16 Nov 2022 20:11:57 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f6cc98121c6d6e23c455cc4891ee75f1d872207a89e3ff24c67d8eedf86dac`  
		Last Modified: Wed, 16 Nov 2022 20:11:58 GMT  
		Size: 383.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer-0.7.0` - linux; ppc64le

```console
$ docker pull notary@sha256:2b2cac51751dbe89a896622064b2b6daa113c9af5a44c68b092ffe41f1b2334f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7096889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f7d83174a997548fe80efaf19090e2ca8db1780da72697fd0e25fec0544cb5`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--version"]`

```dockerfile
# Sat, 12 Nov 2022 04:16:30 GMT
ADD file:6f7965319fe0caaea57086835c0c2212284c6850f33e3c4d522c758e43acbc98 in / 
# Sat, 12 Nov 2022 04:16:31 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 07:12:27 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 07:12:40 GMT
EXPOSE map[4444/tcp:{}]
# Sat, 12 Nov 2022 07:12:40 GMT
EXPOSE map[7899/tcp:{}]
# Sat, 12 Nov 2022 07:12:40 GMT
ENV INSTALLDIR=/notary/signer
# Sat, 12 Nov 2022 07:12:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 12 Nov 2022 07:12:40 GMT
WORKDIR /notary/signer
# Wed, 11 Jan 2023 00:34:42 GMT
COPY /notary-signer ./ # buildkit
# Wed, 11 Jan 2023 00:34:43 GMT
RUN ./notary-signer --version # buildkit
# Wed, 11 Jan 2023 00:34:44 GMT
COPY ./signer-config.json . # buildkit
# Wed, 11 Jan 2023 00:34:44 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:34:44 GMT
USER notary
# Wed, 11 Jan 2023 00:34:44 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:34:44 GMT
CMD ["notary-signer" "--version"]
```

-	Layers:
	-	`sha256:5c3a6ece62351976dfb4b56dc417aebd2a7dbda14ebac2737edd2ab43883553f`  
		Last Modified: Sat, 12 Nov 2022 04:17:14 GMT  
		Size: 2.8 MB (2801551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15023fe5082ace3d77a3ca4c98a9b31b5bef60a4835bddce618606ee9f17cf6`  
		Last Modified: Sat, 12 Nov 2022 07:13:02 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca3c7abc8ed18b90618dae3d8ed39fa05a0357ae27fab896191fb471938ae78`  
		Last Modified: Sat, 12 Nov 2022 07:13:14 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deee061c403b3386800e6c7e6923b535156333ff7487eba4829685703f26b077`  
		Last Modified: Wed, 11 Jan 2023 00:35:16 GMT  
		Size: 4.3 MB (4293169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105871502b0be8567633ecfebc62cb7b991169a9deab7511536215264306a237`  
		Last Modified: Wed, 11 Jan 2023 00:35:15 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c93a3c85bd91aacf3c678ee7161a59f4e917b935af370e2610d5a427db3f94`  
		Last Modified: Wed, 11 Jan 2023 00:35:15 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152baf0ef7c80edfa82907d1e9ab9aa1a72dea74d9a533f9b7ed79414953cb57`  
		Last Modified: Wed, 11 Jan 2023 00:35:15 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer-0.7.0` - linux; s390x

```console
$ docker pull notary@sha256:877f13fa6d5af101201fa45864d3a1b3d3abe72356ca492cfc1b648feeccffbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7194822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8614b7bb2a7a400538389c08bac14d7a46d9b6fdf80f8bd99e1815d71c54fe1d`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--version"]`

```dockerfile
# Sat, 12 Nov 2022 03:42:05 GMT
ADD file:b78ae95cbacd853e398f187adaf3be51d9e301a66de8f7a4b6c60a9733075cb5 in / 
# Sat, 12 Nov 2022 03:42:06 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 05:29:11 GMT
RUN adduser -D -H -g "" notary # buildkit
# Sat, 12 Nov 2022 05:29:25 GMT
EXPOSE map[4444/tcp:{}]
# Sat, 12 Nov 2022 05:29:25 GMT
EXPOSE map[7899/tcp:{}]
# Sat, 12 Nov 2022 05:29:25 GMT
ENV INSTALLDIR=/notary/signer
# Sat, 12 Nov 2022 05:29:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 12 Nov 2022 05:29:25 GMT
WORKDIR /notary/signer
# Wed, 11 Jan 2023 00:30:33 GMT
COPY /notary-signer ./ # buildkit
# Wed, 11 Jan 2023 00:30:33 GMT
RUN ./notary-signer --version # buildkit
# Wed, 11 Jan 2023 00:30:34 GMT
COPY ./signer-config.json . # buildkit
# Wed, 11 Jan 2023 00:30:34 GMT
COPY ./entrypoint.sh . # buildkit
# Wed, 11 Jan 2023 00:30:34 GMT
USER notary
# Wed, 11 Jan 2023 00:30:34 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 00:30:34 GMT
CMD ["notary-signer" "--version"]
```

-	Layers:
	-	`sha256:cff16a5ffe2df97bc1d10b021c5ceb98bdb36a18a1d70395590444ac204a9b2b`  
		Last Modified: Sat, 12 Nov 2022 03:43:06 GMT  
		Size: 2.6 MB (2591126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4ef31691b8350e3f169efda08440ffc8f858999b921631575acdfd35d88225`  
		Last Modified: Sat, 12 Nov 2022 05:29:49 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab5959c551fe4b84515f58281a78c8105c856e6509e5d6d5f6140438605e776`  
		Last Modified: Sat, 12 Nov 2022 05:29:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516cbbd77461820fd3f5006bfa0c7ee3068d78984ab81374409fc4c2bb45444a`  
		Last Modified: Wed, 11 Jan 2023 00:30:59 GMT  
		Size: 4.6 MB (4601528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dc3ba967be9e332b9be4cbc4d422eb21bc20b88eae738b47f86a392d515027`  
		Last Modified: Wed, 11 Jan 2023 00:30:59 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fe85e777d0adadc47aecd49038b38ee9019fba8e72ceef682631a39e404bc6`  
		Last Modified: Wed, 11 Jan 2023 00:30:59 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5c27e1825e210f86f2523370e2a55713fc64afad8083b7201433ce26d7d278`  
		Last Modified: Wed, 11 Jan 2023 00:30:59 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
