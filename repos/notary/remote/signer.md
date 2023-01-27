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
