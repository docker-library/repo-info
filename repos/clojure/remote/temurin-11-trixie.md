## `clojure:temurin-11-trixie`

```console
$ docker pull clojure@sha256:fcb7adaf8cc6121e07bf04eff1addac4a45ea7964b45662aad065e75cf185d1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:94d9a2c092c519c557afdfc80b27a8d05a2b500993c8f49b9d6a648d8fe82597
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277732295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38288a47ee799452705a1b0958572d4717704cdb0007252b8762ad74ad846f30`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:18:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:18:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:18:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:18:07 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:18:07 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:18:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:18:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:18:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1216638bac5587c4ed0355fb657c98a00fa9f72424604f87ef129726ce61726`  
		Last Modified: Tue, 14 Jul 2026 02:18:49 GMT  
		Size: 145.9 MB (145886184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552b2486d671cae1c7f22668c63ebdb1246dc7fdbf2a055106104dea5b017baa`  
		Last Modified: Tue, 14 Jul 2026 02:18:48 GMT  
		Size: 82.5 MB (82532897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a35d66ff7c0f58db20fc4ee53920afecc07ea8857b14dcb42220eb4310bb4d`  
		Last Modified: Tue, 14 Jul 2026 02:18:45 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0caa4559d67aa555ea4d5e2cb6705fb9c34c619b696ecb11d227a03aa178197b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7502716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a39300488d8e96d6c0f92aaff40accaf6a36eecbc55886d39de60b18e1e9ec`

```dockerfile
```

-	Layers:
	-	`sha256:154e60a13631a30db7e260e411783adecb2e4d11451bad5cfeca8a26e8eb847d`  
		Last Modified: Tue, 14 Jul 2026 02:18:45 GMT  
		Size: 7.5 MB (7488377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca1d697001ab65f6eb533ae8c5469081ba3eb60d7c4fc8aab3540e777b1f9692`  
		Last Modified: Tue, 14 Jul 2026 02:18:44 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b4a0c32e7141455ced26b2dbcccd6402743da7fad35df0143d76ad1afc2b066c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274600880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb4a98c60c1e2c3d11423e8c79fcec162b8cc8f2b639e3268b3330d88eb39ec`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:24:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:24:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:24:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:24:57 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:24:57 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:25:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:25:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:25:15 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d56273d38dd8f38b5503af0228526238a6e31f01c8e421ed47f86651355442a1`  
		Last Modified: Tue, 14 Jul 2026 02:25:39 GMT  
		Size: 142.6 MB (142582173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689bb7ebee274db197394e175ef7f82e78a3eff7985a36f3fa3ac16782e9f1c7`  
		Last Modified: Tue, 14 Jul 2026 02:25:38 GMT  
		Size: 82.3 MB (82343876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693475a0b4424097813078d472567724251ead3997c584e29a2f36fe13ac7796`  
		Last Modified: Tue, 14 Jul 2026 02:25:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b2c6dcb91ee24792607350242e847b5c610524eceb31764153f71c467ae2da76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7509845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb5f26f3dcb90bbffe0054436fd14d5ea6e5304f6e547e5d04d2cefdf3d81f3a`

```dockerfile
```

-	Layers:
	-	`sha256:5497d5dd2a454455ce7bf59c83d5a277aa0b92a3c907aaf8a60686cc13da8efa`  
		Last Modified: Tue, 14 Jul 2026 02:25:35 GMT  
		Size: 7.5 MB (7495388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee3a1c548a1e18bdd62a0247e6103b7d3d55d3c2d98bbdc164f12d6b555008de`  
		Last Modified: Tue, 14 Jul 2026 02:25:35 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:bcd42a3d73c7218d4cbc3b96fbab06bfd595d32b3bd536e0750693e73c3601e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274187195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd18862d61c2906cf19bfe3588184629699c242841a613fc1a6c13485b82dfe`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 06:56:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:56:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:56:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:56:21 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:56:21 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:04:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:04:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:04:38 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf789fe3b4a8a893b6dd07ede6f668e14fa6258e18fae274cd2c548fade08806`  
		Last Modified: Thu, 02 Jul 2026 06:59:56 GMT  
		Size: 133.1 MB (133110126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe038ab018051c85a9240ede3dd1c76519d00b3455505149a6a64ba2ff67e13`  
		Last Modified: Thu, 02 Jul 2026 07:05:16 GMT  
		Size: 87.9 MB (87938354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0814405a32c276218c892239e83b96823581df54ed2c3423a78533f25be231db`  
		Last Modified: Thu, 02 Jul 2026 07:05:13 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:174ee414f159ec92490832e104d10e8cf8401f824114dfe8de47087f3f6cfdc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7506515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42eb701a7fa19915f997b3250b45cb128497357ba65fdfb1bb8a87e8f9188d71`

```dockerfile
```

-	Layers:
	-	`sha256:cdc368c50b2daa17144493cf237fc502ba1239cdc9d687db9e4e2893a17f992b`  
		Last Modified: Thu, 02 Jul 2026 07:05:13 GMT  
		Size: 7.5 MB (7492129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18672eebb4f3d7873b75740b751db45bc5ed0386ceb23d9af54abd786b4134f9`  
		Last Modified: Thu, 02 Jul 2026 07:05:13 GMT  
		Size: 14.4 KB (14386 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:f520af1ec31eb88ece3e810ba4dc7d31f60bff11608bae33dd72c3506aa444bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259535875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160e35502a67e640300b759ad038efec31094ba3745ab3f687b65854d20e0d3b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:25:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:25:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:25:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:25:16 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:25:16 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:27:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:27:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:27:31 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86d06f13af0bdf83515f911c37fb8b68eb8dd6842a5ed2dfc9e5f8746a5d40a`  
		Last Modified: Tue, 14 Jul 2026 04:26:58 GMT  
		Size: 126.7 MB (126651524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5510394178eb6d9466b2b5c8a10a8f82415287618a2e21f7c6434b5318472ddf`  
		Last Modified: Tue, 14 Jul 2026 04:27:57 GMT  
		Size: 83.5 MB (83502000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ce18669fe297db94686b2d8a45d5248552dbebcff7f5435b22c86d04a2b21a`  
		Last Modified: Tue, 14 Jul 2026 04:27:55 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:032291853c69808fff2fe2ab9ad91ef4bcc5a017673e2452cf4b3c90d0e4bd8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7498642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eb96c7448e935e2e7d579f6fcb4b234a1c426cc1fb5f1292f00828e5a410843`

```dockerfile
```

-	Layers:
	-	`sha256:50a3ea7aca8431811fbc4c6e9f0eb48534983e4f63d4fd73c8edad5294535f37`  
		Last Modified: Tue, 14 Jul 2026 04:27:55 GMT  
		Size: 7.5 MB (7484303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef027138742e174cf88c566b3fbf1dbb12413b102267699710451f1ff933ef02`  
		Last Modified: Tue, 14 Jul 2026 04:27:55 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json
