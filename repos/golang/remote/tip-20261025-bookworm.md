## `golang:tip-20261025-bookworm`

```console
$ docker pull golang@sha256:cdc5fb8f79df796ecebc2623a7080e3f6f8d230ff1f9a2c8c8ab1e2f79c051db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `golang:tip-20261025-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:cb5469f33a355f445ed266b8c59d1682692713a5ae5d033a8562546213ec2b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 MB (334639030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55d96ef5250c30e904f7e0e222a12115bcaf3e69ee9730ced04bc960a452a6c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:23:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:16:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:17:31 GMT
ENV GOTOOLCHAIN=local
# Wed, 28 Oct 2026 04:17:31 GMT
ENV GOPATH=/go
# Wed, 28 Oct 2026 04:17:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 04:17:31 GMT
COPY /target/ / # buildkit
# Wed, 28 Oct 2026 04:17:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 28 Oct 2026 04:17:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd0ae7831394e9635b737d684810716dadcb662b5b9b80eefd89cee1d65395`  
		Last Modified: Wed, 28 Oct 2026 01:39:43 GMT  
		Size: 23.9 MB (23873246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661ef7e1e7b1a9919ab256de1deb5be9107b28a15fea74b39921bec95b713038`  
		Last Modified: Wed, 28 Oct 2026 02:23:17 GMT  
		Size: 64.4 MB (64432590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fae68ab11e5482d4fea9a928c00d877b5c47a2422ee796ad65c03d9e52874d`  
		Last Modified: Wed, 28 Oct 2026 04:17:58 GMT  
		Size: 92.6 MB (92629996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82722e2c046f52bc924fd3eab9f7d4fbf5bbac9fb0ce67fcca5e63377a411258`  
		Last Modified: Tue, 27 Oct 2026 16:28:35 GMT  
		Size: 105.2 MB (105178487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9ae3168bb569e3d6a6c46f84ed518b506411b862c4161ba08d118702438d32`  
		Last Modified: Wed, 28 Oct 2026 04:17:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261025-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:622fbe6395de996cc12a826c91c0a7e91315fa5e63a0e1a0c798ab956e19a889
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10529121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9281861e3ab83adc1ea2d303653740638b3d9f13b54d100f281ccbf83747ca3c`

```dockerfile
```

-	Layers:
	-	`sha256:87ae5210c80ed4af812a10ae25068d82fad0345ea0d4db13cf0b9a3e29cc88ec`  
		Last Modified: Wed, 28 Oct 2026 04:17:56 GMT  
		Size: 10.5 MB (10501019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e625636304183c66a45e2e602ae1211fc405a428f605af070a1190c517b8b8a3`  
		Last Modified: Wed, 28 Oct 2026 04:17:56 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261025-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:dffefbce8f763bffdede3f30ca35e62ecb1609a9a4b02cc783e29dac4b531d0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.2 MB (293229455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2420bd14694168062cff9a73e2e8c17a91fa8d1ad2082e0506ebf7f2eec2ccfd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 05:16:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 05:17:36 GMT
ENV GOTOOLCHAIN=local
# Wed, 28 Oct 2026 05:17:36 GMT
ENV GOPATH=/go
# Wed, 28 Oct 2026 05:17:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 05:17:36 GMT
COPY /target/ / # buildkit
# Wed, 28 Oct 2026 05:17:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 28 Oct 2026 05:17:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:72f4613dafbee94a9d937a8241dd188c8143e980307c6c720b773c03ddcb2285`  
		Last Modified: Wed, 28 Oct 2026 00:10:32 GMT  
		Size: 44.2 MB (44221103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f86b36671358a47968a5c63e26422e3e04df59f037bf006fc094ca8b47a4857`  
		Last Modified: Wed, 28 Oct 2026 02:21:28 GMT  
		Size: 21.8 MB (21770330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfbb29011d30458b56293a68613d94dc4b801df7c78c8b832f4d475cb486667`  
		Last Modified: Wed, 28 Oct 2026 03:47:25 GMT  
		Size: 59.7 MB (59697464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7bbebd84911828786bf92ec7716c65dc875c4a8aeff25d5ea8e4296e7a7c56`  
		Last Modified: Wed, 28 Oct 2026 05:18:05 GMT  
		Size: 66.5 MB (66481231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585ed0706d066a1f8a8160080fb6eb18909eb49a3d840816f9c4cd9c4cf85b15`  
		Last Modified: Tue, 27 Oct 2026 16:28:56 GMT  
		Size: 101.1 MB (101059169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343654d0a44824ae81a71275ef192eb633485d51cebe55fe6186bbd3447c7a20`  
		Last Modified: Wed, 28 Oct 2026 05:18:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261025-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:7c58d4714ebccb2a1ec56902b6502d82da5b913c735574e59197d97f43d8d4c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10335927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb12c4f72d707f0df21e8a12fd001050bcf84d4b89366525591efd580252775`

```dockerfile
```

-	Layers:
	-	`sha256:e27ea7cf840bbaad94f3ce0d17fbac464a2363fdff8a809797a9919cd3842956`  
		Last Modified: Wed, 28 Oct 2026 05:18:03 GMT  
		Size: 10.3 MB (10307713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:248b19692111f5f1c1ed449a14622bf9e77f9a81e28bb7b5baf05a8ae1824216`  
		Last Modified: Wed, 28 Oct 2026 05:18:02 GMT  
		Size: 28.2 KB (28214 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261025-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:7410a3cf63eecb107bcaa8b7b924c88c7ade940635bfed0f400aef8658cda4d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.6 MB (322638383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7241f89b10046a7e6dd3ccd236610e2a1fbff35189b3fd0ac916b61fb727b576`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:34:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:16:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:17:14 GMT
ENV GOTOOLCHAIN=local
# Wed, 28 Oct 2026 04:17:14 GMT
ENV GOPATH=/go
# Wed, 28 Oct 2026 04:17:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 04:17:14 GMT
COPY /target/ / # buildkit
# Wed, 28 Oct 2026 04:17:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 28 Oct 2026 04:17:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8782a51b4859547b9e75033fe9ea76035a0145a516f9599564fbb0a9b01212`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 23.4 MB (23439758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9f3d35258fc5018f37db87b726c6d8be6533cd7f9a10f219d805efa5969df3`  
		Last Modified: Wed, 28 Oct 2026 02:34:39 GMT  
		Size: 64.5 MB (64528622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a884046a96aae700434c0e8fdd679e10754e45cf2cdc5beefa938c7c05853ff`  
		Last Modified: Wed, 28 Oct 2026 04:17:43 GMT  
		Size: 86.7 MB (86700559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e63cc2709b769d01b299b6ecc290dd6fd049fba9121425facd2f9f9d685556d`  
		Last Modified: Tue, 27 Oct 2026 16:28:28 GMT  
		Size: 99.6 MB (99564116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dabb78a3d7322d8821b5df74d9d827716098331c81696da26990169696d3957`  
		Last Modified: Wed, 28 Oct 2026 04:17:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261025-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:22914b5ead95b56ca571c6518a22bdc8436881ff1456cb008c8a02119271593b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10557077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c393a0cc0194cceafd6dead3988f0fae22a29c9e09471a0abbe399de9be9d4f`

```dockerfile
```

-	Layers:
	-	`sha256:50594991c38e94a546598467579562d821f606bbbb10d4df6772ac310f572303`  
		Last Modified: Wed, 28 Oct 2026 04:17:41 GMT  
		Size: 10.5 MB (10528843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:605987baf5320159327b3cd7d14f7d45d8f973d3b8be3d60f986b43e7b84051a`  
		Last Modified: Wed, 28 Oct 2026 04:17:40 GMT  
		Size: 28.2 KB (28234 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261025-bookworm` - linux; 386

```console
$ docker pull golang@sha256:339a874aa879f5bcadffa33f33364bf501e71265317634fd5bbda40006d4c5a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.5 MB (333507675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09b9c8227482f92013a3f6bffa4a7fb38c25a9e511a9ef549ee1dc87bd5a444`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:42:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:28:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:12:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:13:59 GMT
ENV GOTOOLCHAIN=local
# Wed, 28 Oct 2026 04:13:59 GMT
ENV GOPATH=/go
# Wed, 28 Oct 2026 04:13:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 04:13:59 GMT
COPY /target/ / # buildkit
# Wed, 28 Oct 2026 04:14:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 28 Oct 2026 04:14:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7d013cfb99f9a659ec5a70c7dc91ff3a30fef8cec1975cdded7a6450f2dc79f0`  
		Last Modified: Wed, 28 Oct 2026 00:10:25 GMT  
		Size: 49.5 MB (49513537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c427ac0282c0d463802a24e053ae8fee85e1e035dd9990480227e0565ac7a8d`  
		Last Modified: Wed, 28 Oct 2026 01:42:52 GMT  
		Size: 24.7 MB (24703225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1774d898b2aada2b7099457b957d9c63dcf62f51c7916ce3034941142e49d2a3`  
		Last Modified: Wed, 28 Oct 2026 02:28:36 GMT  
		Size: 66.3 MB (66277930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc53ac03b335762dee2f42bdfb15f160a903efcad658c469f2ca07db95cd477`  
		Last Modified: Wed, 28 Oct 2026 04:14:28 GMT  
		Size: 90.1 MB (90051534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:472f9a541f4058200fdb5c688e93c6b823dc26a63f30bfce9ee0889838aec45e`  
		Last Modified: Tue, 27 Oct 2026 16:28:47 GMT  
		Size: 103.0 MB (102961292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd97e5fd535118071de2c37364403ef8e851ff74cd2712973e323234bc18d01`  
		Last Modified: Wed, 28 Oct 2026 04:14:25 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261025-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:e4524ef9733dc582d790838ae28920dfcca696f85c030f7b4a51236f62d684c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10508668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655ace81e2f4f29960a0a23edb47387fa26ab8be30fcf04335b11a6337cd3157`

```dockerfile
```

-	Layers:
	-	`sha256:2b98b7e2e94ec8181e63ab6b20fd45c19bf9f0a68b776eb91e3d25040cbde590`  
		Last Modified: Wed, 28 Oct 2026 04:14:26 GMT  
		Size: 10.5 MB (10480599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5091fc3646ab8bf9eaad3a87f6e467e1a4d94ab766a350dca5698251884e03d5`  
		Last Modified: Wed, 28 Oct 2026 04:14:25 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261025-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:817b363a39a2b026130683226b1a58705612752fd312746b8a8baccd4cc86248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.2 MB (340217447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5096d0be30544dfe5368af824458a03846da0d06ad4ef3462be95f4ee06b645`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 04:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 11:54:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 15:07:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 20:27:25 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 20:27:25 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 20:27:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 20:27:25 GMT
COPY /target/ / # buildkit
# Wed, 28 Oct 2026 17:29:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 28 Oct 2026 17:29:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7339b62b6463010208cd0f9bd95fca3c60b698cdfeeda413d511e883ce2f291`  
		Last Modified: Wed, 28 Oct 2026 04:19:13 GMT  
		Size: 25.5 MB (25514966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac3a369b48a110414ca84367074180b8af9539eba053b90f33f4b4032884eaa`  
		Last Modified: Wed, 28 Oct 2026 11:55:23 GMT  
		Size: 69.9 MB (69899322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ef29cc001b214213ef5f464ff175f314c9399a01412e5655529bea10f928f5`  
		Last Modified: Wed, 28 Oct 2026 15:08:45 GMT  
		Size: 90.6 MB (90623287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8ca9ca011184d58c037e97d28044484ea497a6cca757182d4969f97cb5945d`  
		Last Modified: Tue, 27 Oct 2026 20:29:29 GMT  
		Size: 101.8 MB (101813407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5097d834fe246d615e9c564c9330c527729da208f42a75b4576fef7fcd7cbf5b`  
		Last Modified: Wed, 28 Oct 2026 17:29:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261025-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:9cfd1230c4d338b238cf7e4ed0a2bbc1dc6ee7446448695306cd0c8a7551a4cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10501650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d9bfa5bf81f01e40696e12e2fa2351a81f2bd0a949f422310b7d009f4ed01f`

```dockerfile
```

-	Layers:
	-	`sha256:cfd8247e13263af3d7a4f01770e40eecddc4e4ff43e7e04ea15dea7dc0adf147`  
		Last Modified: Wed, 28 Oct 2026 17:29:48 GMT  
		Size: 10.5 MB (10473502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e76bae42318f23eb477dc467cf28350d30f29279b02d920f3d3327d2ebccc189`  
		Last Modified: Wed, 28 Oct 2026 17:29:47 GMT  
		Size: 28.1 KB (28148 bytes)  
		MIME: application/vnd.in-toto+json
