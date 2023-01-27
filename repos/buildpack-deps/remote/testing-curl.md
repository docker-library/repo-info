## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:b3e63798dc4d95b40005e93b10e7de43e0502ec87064927290a5a214ce10461a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 8
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; mips64le
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:testing-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:137dbd724ecc4992b1bd436603c35b942a51d7eecd5176e562bd712369d2484d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70491629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1912d3f74afbd2c33d5f13b685b963d15c20465c7c846e5787692c8f91a6bcfc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:06 GMT
ADD file:cbb7762965e1100a173296573d49c70a5e56d5318572ae1b037854e45a3c81df in / 
# Wed, 11 Jan 2023 02:34:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:02:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:02:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:248f02a8d7fb9e98e764c3ef93b9922d99e6b305be444aa17bace4ac12a55508`  
		Last Modified: Wed, 11 Jan 2023 02:38:08 GMT  
		Size: 50.1 MB (50106530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f922aacf80e8d4f20a47bafd73d9b7865d169f43635eaabc15b5e25eeb6057`  
		Last Modified: Wed, 11 Jan 2023 03:11:00 GMT  
		Size: 9.0 MB (9032940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b287e34dfb83462bf58f6751173d64481c601980dc53909c7d198527f44e88`  
		Last Modified: Wed, 11 Jan 2023 03:11:00 GMT  
		Size: 11.4 MB (11352159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:0580aad15fc0147fbac82a6d9f27defd99a0a884ca7be6944fd6a74aaa34cf58
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.6 MB (68567185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:582e18753ab080eea1443d217112553b45347d2040f4dac826b37e1b181cd107`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 01:54:53 GMT
ADD file:5d45a8dd4f8495c2419fecb2fbe1375bee8fdd9c4ecd8482c9d93073ceaf0eb1 in / 
# Wed, 11 Jan 2023 01:54:53 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:22:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 02:22:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c18e65c95b83dd67fa3b288d25c836639aed042685d4b545ff41efbf3046505d`  
		Last Modified: Wed, 11 Jan 2023 01:59:27 GMT  
		Size: 49.1 MB (49082333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2627725f148bd514b2afb35f5ee907f5f061ac39a52d6f89b1cf91b8a80f46e8`  
		Last Modified: Wed, 11 Jan 2023 02:31:26 GMT  
		Size: 8.5 MB (8484837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a81a8997d0bb710a3d95fc77245088619618e15dc87431056622547133566c3`  
		Last Modified: Wed, 11 Jan 2023 02:31:27 GMT  
		Size: 11.0 MB (11000015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:afa60d980103b9aa2850bd8bb62a3168fbd965f0d48675e09bd8582e983e6522
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65662877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9088dbca8c6a4ce41056e2397ac993b9a8f928fddde090bb82b2ec6860b04ef8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:59:43 GMT
ADD file:b6a187b9130cac841492cfd6fca00af190439f4343e640b8bf9a62de450ba611 in / 
# Wed, 11 Jan 2023 03:59:45 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:30:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 04:30:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:702c5cffc9db6e776f7684c8b275c47d1706fe0c1c6ae97ecbca1158b5344ce9`  
		Last Modified: Wed, 11 Jan 2023 04:06:34 GMT  
		Size: 46.9 MB (46896199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bc10aae9d9ca78937a14c74d77038319d33368c9eb41b80d9f5931c62c9efd`  
		Last Modified: Wed, 11 Jan 2023 04:42:44 GMT  
		Size: 8.1 MB (8133411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5241b3a60c9e1048ba06ff64a109707b8e25f445184957a0c680152e95eabc`  
		Last Modified: Wed, 11 Jan 2023 04:42:44 GMT  
		Size: 10.6 MB (10633267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:9d62c8503ebb5cb5fa6458d4767ace8d8ba1f1f872893ed99385532c66f7b65e
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70344945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e1729b1f0f14758a78ffe832507ab7c5beb94b94c43bc1494ffae76e8d9fae8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:06 GMT
ADD file:c43d870f9cc5c78ae2b5929a9b3ff0e3b1f78609ed1778045e9ce2cf6c85b0c9 in / 
# Wed, 11 Jan 2023 02:57:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:21:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:22:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:464937bea8f251db8aac33b1f72ddb6cd41283ccba5ec3cce468797a236e3411`  
		Last Modified: Wed, 11 Jan 2023 03:00:25 GMT  
		Size: 50.2 MB (50161611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d034a47bebed162ca9182680481208a874354e41121606c44115656346571ceb`  
		Last Modified: Wed, 11 Jan 2023 03:30:39 GMT  
		Size: 8.9 MB (8865422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbec90cc75b7a823c451d4bccc53bfe36149bf167580a9b44f84e18a6998ff3e`  
		Last Modified: Wed, 11 Jan 2023 03:30:39 GMT  
		Size: 11.3 MB (11317912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3fb01baf9d280c370d7ba2942c47270b4d2673a347bb64e7bde9316c32ddf5b0
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71911792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a8d943b8caa91c804357b3759b6c8c363f44119d14823edd5b47e3dbee7027`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:15:25 GMT
ADD file:06e348f9dbb5c60f5fd91cd10d8ee7ea08880c456ebafe9abda4790022b4df0b in / 
# Wed, 11 Jan 2023 03:15:26 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:44:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:44:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a47c0f7cbd17d33fb9f2b6cf8675588aebc0fec7ed1b046061cdf73f126e59e5`  
		Last Modified: Wed, 11 Jan 2023 03:20:53 GMT  
		Size: 51.1 MB (51145053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587d34329fdb4032987917ae2adcce64e09e2b539f582a4e559b3047a4ab25ad`  
		Last Modified: Wed, 11 Jan 2023 03:53:32 GMT  
		Size: 9.2 MB (9210776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c303d7c650df0ed1a7e0e695ba5e15ee30e1b61926f8062c6119dc3e2d0e40f9`  
		Last Modified: Wed, 11 Jan 2023 03:53:32 GMT  
		Size: 11.6 MB (11555963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; mips64le

```console
$ docker pull buildpack-deps@sha256:0f1aaf8a9eb04c2b63c6b73b3b7ea36da2f48ae4150ca41ea1e082597bb48f98
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69623252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0962691218bd416db2e2abffe3ecb6605fc498970d95082adc7f92278eb898`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 16:32:17 GMT
ADD file:aa37d39fc83f9cce3f1f8522cce22a9c3f9734fea6996431d00a2921079da343 in / 
# Wed, 11 Jan 2023 16:32:22 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 17:11:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:12:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:951f9db918ae0d2bc2c008522e4d5801e026653a12e21d76a02a48b96faaaabf`  
		Last Modified: Wed, 11 Jan 2023 16:41:22 GMT  
		Size: 50.1 MB (50120566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f5f91f049142f1806ecb72912bae28f718b88cdfc593aeaf7a39f089532f66`  
		Last Modified: Wed, 11 Jan 2023 17:39:47 GMT  
		Size: 8.4 MB (8398591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cee1eb44d9967c2535c5377493c304e9066c347f97119b605462ed59745bcfa`  
		Last Modified: Wed, 11 Jan 2023 17:39:47 GMT  
		Size: 11.1 MB (11104095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:fb91aaf32cfe50d6093ba12f1540ddaf2e1dad9ea28b0308d2c6ed6b297310e2
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75870590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5166e19dfa97fb4d78ac29c7159d5a4f66170f2f3f0607a12542b14979ad34bc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:48:20 GMT
ADD file:be85aca9c16cf896fbced9508d29913a52fd69f8b2fd24c49efca520a37eeb1e in / 
# Wed, 11 Jan 2023 03:48:23 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 07:09:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 07:09:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:752672804a573b7cec5745cda59b6068007db5af1aef95a3e7929331c20247e1`  
		Last Modified: Wed, 11 Jan 2023 03:54:09 GMT  
		Size: 54.1 MB (54143855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750945def87bc453cd91c327bab81f39d93adb5ab86cdb4c913921aff512e2df`  
		Last Modified: Wed, 11 Jan 2023 07:24:14 GMT  
		Size: 9.6 MB (9612460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51845b4a51b4708da56bb53781c3d9bab20bd3820ac919ab7598b33948797a8`  
		Last Modified: Wed, 11 Jan 2023 07:24:14 GMT  
		Size: 12.1 MB (12114275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:100db957d8a37f06bdf355593ac26d5dd482dd0c700764506cc5ca48b10196bf
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68372007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b23fa2f5c36f2aeda347676bf2ccff42dd4bf2199906433ed612948dfb1ba62`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:21:33 GMT
ADD file:1ba7db44596ea26688f29eb4d23da5507a0d71de49facb85ffddbea04928e97b in / 
# Wed, 11 Jan 2023 02:21:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:46:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 02:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:cc45c63d26bf6e7676d21861c5543952964197c106b2cd255789a8aa3734c0de`  
		Last Modified: Wed, 11 Jan 2023 02:26:06 GMT  
		Size: 48.5 MB (48490381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b941bcdefcde17ded465ffd68a2ebb6d2c7db9642b4c6e5df1e8f72eb96d886`  
		Last Modified: Wed, 11 Jan 2023 02:55:46 GMT  
		Size: 8.7 MB (8665948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccacc30d10abfa911c54fe2ac56c3afb46ad1b934aed0943fb3ef1ff2b4fe619`  
		Last Modified: Wed, 11 Jan 2023 02:55:46 GMT  
		Size: 11.2 MB (11215678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
