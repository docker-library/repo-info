## `clojure:temurin-8-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:8775f6c122f9a771d32b199d93f00647b38583f25574880b486e2b6c9d60273b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:983665fe4098b2b98ce458b3eb985274d4f8bfa788804375d7d06dd13800eb4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.0 MB (183996492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ea4eaf63e0ed0a0248c0dc3dbd5ae261cd7814ebd893ca4534add673dfee08`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:09:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:09:56 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:10:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:10:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:10:14 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:110f960408739035e638c86e841ec41212deb988831716560efdf59c2b5b05d4`  
		Last Modified: Tue, 06 Oct 2026 02:10:34 GMT  
		Size: 55.2 MB (55192264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38c5ea2ba86e09baf4fcebd2c10f36c6fef23a0aa34853ef584c4d707579047`  
		Last Modified: Tue, 06 Oct 2026 02:10:35 GMT  
		Size: 80.3 MB (80285562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d833018fb827e76083a24a91b6d7500e05e83b49626d992663568cbc83c848`  
		Last Modified: Tue, 06 Oct 2026 02:10:32 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4d89c441a9fce67d4ccd4aeac80af0c91c779a1d7a9fd946484f6e9c44ccf890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7515342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68cc79157c821d1e1b4d51185867f9ea9f63f03ad982d97edb1290b0c36a7d96`

```dockerfile
```

-	Layers:
	-	`sha256:ea4cd69e1638b8fdf24b777a6df0e646d193fb3e0747ff5a708a51231b903c92`  
		Last Modified: Tue, 06 Oct 2026 02:10:32 GMT  
		Size: 7.5 MB (7500994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4b8d38ca63d20013736bf8b7563f256096166b3f4187bbb6b7377bcb2e1fe8c`  
		Last Modified: Tue, 06 Oct 2026 02:10:31 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:77781e1cd54f2f9d8ed7351ec7a17c21f8672737a351466c84d3f224d66e908e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.9 MB (182886582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d9c1251d7c53d82e3591bd93b6f20cc40403493e276ab382dfe0243e41ced0`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:16:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:16:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:16:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:16:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:16:08 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:16:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:16:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:16:25 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ee34c74ab0ba07a8598268ae1e3eb497a10c6d2d9f0c657de13d00a6837e95`  
		Last Modified: Tue, 06 Oct 2026 02:16:44 GMT  
		Size: 54.3 MB (54254279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070ce36de81b532b2c6192c609781fcc68766596cd398e1e0583ecab1c2b29e8`  
		Last Modified: Tue, 06 Oct 2026 02:16:44 GMT  
		Size: 80.2 MB (80230104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26409a2bcf1e1b2131c7cb3bcc62daa7cdd4ab8c1b1f084bd990b4bf1c2214de`  
		Last Modified: Tue, 06 Oct 2026 02:16:42 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7a71fd777c3c925c593005b472f8c3735382c4ce3a94bfdb2b9c8a9db37d2c60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cca577d73327dc43ae730ed4d97c31fa2da20e33072a3d7eef7949f2142d1ec0`

```dockerfile
```

-	Layers:
	-	`sha256:c3bee0914b7dd36fda79fd6274f3c94eef40926b1c6373cfdfb7e3304bfe8a1d`  
		Last Modified: Tue, 06 Oct 2026 02:16:42 GMT  
		Size: 7.5 MB (7507457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53cd1b24d72dae3c4dc3f0e63dc0ca8b4051cd29c02346857c33a6140e2d6786`  
		Last Modified: Tue, 06 Oct 2026 02:16:41 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:a26cf9f2a5cf15dc56256125eb76a52f4535c7e3086011a720d93c225e89c2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191292113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374077dc53b675feb17545597401ebf1ed12336cd31454dc5fe5ad2eccf8535e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:38:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:38:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:38:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:38:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 09:38:28 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:39:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 09:39:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 09:39:32 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8004bdd488b9be7b26fd6e98722af96d446686bce2e828e3fbfef2375f3db4`  
		Last Modified: Tue, 06 Oct 2026 09:40:34 GMT  
		Size: 52.7 MB (52667071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7418cf1e8bbfe2fcfad5c19a0f66dbf1b4cec51e1ecad35a3b79e72fd17fdd88`  
		Last Modified: Tue, 06 Oct 2026 09:40:35 GMT  
		Size: 86.3 MB (86261659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdc1b30d23aa3b3b5c4dad9f9a6a1b8be1a64dfcc077b1b56c3abbe8b679de6`  
		Last Modified: Tue, 06 Oct 2026 09:40:32 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:cdc398cb9d9112bef18cfcb032e6e0d4900faeeee24154111d5097760a96089e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6689d9ca95fa4f52b8577ac49b5d2c3c89e0fc17bf6d6a9263c003539ab2995`

```dockerfile
```

-	Layers:
	-	`sha256:5c9e27e6ea6e1d7f99adfc46d686c3dd426fed352de55244ac7e9224650d853b`  
		Last Modified: Tue, 06 Oct 2026 09:40:32 GMT  
		Size: 7.5 MB (7506803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d71f16818e3888942f5b712326d97f4b171f46add07b00798242ca69b1b3c01`  
		Last Modified: Tue, 06 Oct 2026 09:40:32 GMT  
		Size: 14.4 KB (14395 bytes)  
		MIME: application/vnd.in-toto+json
