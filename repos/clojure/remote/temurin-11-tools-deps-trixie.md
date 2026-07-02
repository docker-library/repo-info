## `clojure:temurin-11-tools-deps-trixie`

```console
$ docker pull clojure@sha256:9d0c212e1b87dd43e232ff35f649dbe0dc8995b7636fb51106a14b7136b3f7fd
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

### `clojure:temurin-11-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:7c4c3ef578f028477294543f1a459e9ed0c9221fbb02088c8fd744546beb628b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277723880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8545fe75460fc0655df127284e70b76f2187afda48235873080104fdef529107`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:49:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:49:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:49:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:49:46 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:49:46 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:50:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:50:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:50:01 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a62e1fe3d11f10264990060e5958a4331c603db473e5a51a9e7824c76338a5`  
		Last Modified: Thu, 02 Jul 2026 05:50:25 GMT  
		Size: 145.9 MB (145886124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e30c34cfcf510b8da3f3a787c27352e9c8bd482852ff1425629ffc38a84a5c93`  
		Last Modified: Thu, 02 Jul 2026 05:50:24 GMT  
		Size: 82.5 MB (82519853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d1d21b436512e1c432e97dcd2a5f737452930941698661b1ef4d7584856a3e`  
		Last Modified: Thu, 02 Jul 2026 05:50:20 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:70dfc843c0c9868b7db4dd65a0b11be1ff3daef2669eda4e75f77d35b8fa2f56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7502662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699c1c197d1a18457865aff2e5d4b5c19feb46b58ff742ddc13695fe3f2edcb3`

```dockerfile
```

-	Layers:
	-	`sha256:a7f1332d9787d1e95fd0e1b4853385d464ffc386a65c733518c4d1f654098774`  
		Last Modified: Thu, 02 Jul 2026 05:50:21 GMT  
		Size: 7.5 MB (7488323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f52a1ccb49be2fd0862352c02a256ffe303520ab667616bc04173297ca9aad4d`  
		Last Modified: Thu, 02 Jul 2026 05:50:20 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7c9763490e8b733355572a545f25ce73f84c3882fe45ca3452a98a692a922e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274600800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f49b5cb77a036734d470b8f855b4deb840bf9b8e407637771f206450103982`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:50:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:10 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:50:11 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:50:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:50:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:50:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335d59ea78bbfc5be33630ef6624d11df938e463bcda9f9b7da6df0c23a01f73`  
		Last Modified: Thu, 02 Jul 2026 05:50:54 GMT  
		Size: 142.6 MB (142582194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f43f72381cf1da2dc3dadbbbfa83a0c73501471b04c4432bdade6a44794be58`  
		Last Modified: Thu, 02 Jul 2026 05:50:53 GMT  
		Size: 82.3 MB (82339566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49625b213d40b1b757dbf72901074b37b9ddbe1cbea56c328b3ce5d4004dcb1`  
		Last Modified: Thu, 02 Jul 2026 05:50:49 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d24228f36d757ba17b5d2263e220278356556a5eab6e6947f088901d9eb282e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7509791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054e1ec1540754e093f86e55fead505e67260b63e1df6bc743f56ff3d90a84a3`

```dockerfile
```

-	Layers:
	-	`sha256:d4cb69c002b95dbd34f8d9159bb1a5cd6994c02bc0f4c17b384820f74ff51da2`  
		Last Modified: Thu, 02 Jul 2026 05:50:50 GMT  
		Size: 7.5 MB (7495334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96c41380ab38ea589a808f127ff6a17b9930b4f945c20637cd8ddad7515bb8a8`  
		Last Modified: Thu, 02 Jul 2026 05:50:49 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; ppc64le

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

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

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

### `clojure:temurin-11-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:200cedb93a5fb36da7634fd0b87a39910612e99e711b3899a000f5722499c7a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259541470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc0982db898ff6a31d9d7e99fb8743e2d1ce4484d2fb1bb94caa5a2d8be21f74`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:45:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:45:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:45:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:45:36 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:45:36 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:47:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:47:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:47:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a913fbdd9db0644debf6509cf7d45e7eb7335dff120d8acb6b5e401ada393031`  
		Last Modified: Thu, 02 Jul 2026 05:47:25 GMT  
		Size: 126.7 MB (126651507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a4760c7fea8b27e3e3c2c6e4a32daa229c74b5e64c7b35fa7f45bd01803596`  
		Last Modified: Thu, 02 Jul 2026 05:48:25 GMT  
		Size: 83.5 MB (83503255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091a84d0d21a1c753905267ad60b4796a343f8c515d31cab153be928c1c78656`  
		Last Modified: Thu, 02 Jul 2026 05:48:24 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:df92b6c173e5b7125dafbd33d9cfed4f06a674eff07d39248c58e59911d216fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7497633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125afef6be637cec6299743eff342b17a87db0b1185a47153a98653ac48e37b6`

```dockerfile
```

-	Layers:
	-	`sha256:f517a3b5a5afb18318ace140b3b53067607ce33da1273f218a07ca404f0b1aba`  
		Last Modified: Thu, 02 Jul 2026 05:48:24 GMT  
		Size: 7.5 MB (7484249 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc6ff80c6374c8a0335f0aaa4d3abd4e905a52b7dffbdccd47ee6836cb252cd3`  
		Last Modified: Thu, 02 Jul 2026 05:48:24 GMT  
		Size: 13.4 KB (13384 bytes)  
		MIME: application/vnd.in-toto+json
