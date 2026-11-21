## `clojure:temurin-25-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:01f9d7e42a6f3a22ae0e2a654ef9830aca4ff73798219427f175f6697fb55eac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2c801831cf56e0be3d918d243dcc3a7c0561eff3ecc279c980b4b7f88b4d2198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191461299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d16f4659fc3d27d3f212c4a7bc4d767346f1a5d64ce8e7583c5f898c4de397d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 17:51:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:51:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:51:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:51:19 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:51:19 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:51:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 17:51:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:51:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:51:36 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:51:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef18595ea3a18fbe62d5d4071b780450fb9bc6318d93f8c90df4a0bd04cfe6e1`  
		Last Modified: Fri, 20 Nov 2026 17:51:57 GMT  
		Size: 92.6 MB (92613905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9b055724cfa8bf8fc6c62275250c33b24b93cb9261431198b687678f7d2023c`  
		Last Modified: Fri, 20 Nov 2026 17:51:56 GMT  
		Size: 69.0 MB (68989714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d24fc407c5e35a9b755ef1af78d1e9a58bccda2f155062cc9e52ab55a8479e1`  
		Last Modified: Fri, 20 Nov 2026 17:51:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9410b6d92be9d62c4b1032aef1411c625bd6d29dd7bf2f2fee502ba7f1e0d6c9`  
		Last Modified: Fri, 20 Nov 2026 17:51:54 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6f6b9a484364f0d9dd38ecf771045c3c850b74d1662d1df2278e263998a240f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5246798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f66e865d152f24811462a141ebf93701926d1ef1c05ff830107082e0fecf8e3`

```dockerfile
```

-	Layers:
	-	`sha256:af51c063e4fe7a010ba12b24f2dbd08bb69ca5ceae1d7e20c01d690945d92545`  
		Last Modified: Fri, 20 Nov 2026 17:51:54 GMT  
		Size: 5.2 MB (5230151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c32cd96e0a49e8ee07ce13bc0bf252d84a2a20909b0579b7c50a39b0c0b0c4e1`  
		Last Modified: Fri, 20 Nov 2026 17:51:54 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b27a7a17fb56ebc38c64533b73d1c11dbb905986bd2bd9038718665ca4df7c7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190575752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a02543d77142b996f2df5044255bd63927138e50aedb1004083dce4857a9c825`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 17:46:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:46:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:46:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:46:32 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:46:32 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:46:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 17:46:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:46:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:46:49 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:46:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dabcb94ab7cc280443e0157bb2b6176ecedc6a03325fe0cd2bbdff94901ac6be`  
		Last Modified: Fri, 20 Nov 2026 17:47:10 GMT  
		Size: 91.6 MB (91554010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fefdad7c0a58b321faaac3bcbc47fbdaf7e1ece33d08bf26329e3e1151ab312`  
		Last Modified: Fri, 20 Nov 2026 17:47:10 GMT  
		Size: 68.8 MB (68806154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb0b2e829bfe71f31a59a089f5226728523e5ecd84454f904a14ba4c559c755`  
		Last Modified: Fri, 20 Nov 2026 17:47:07 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:813a9093dd6b5192ca104241ca76a9715a1469b7ad22dfd45e65bd64a5de3433`  
		Last Modified: Fri, 20 Nov 2026 17:47:07 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:12b833598c96a31545102f0f21a77c0a7cffee2f7573e71eee4d27cfe9ee61e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067e54c99b4bb9d0d6548d3e898befa8dee21d9c195c57981d5acf6d18f58195`

```dockerfile
```

-	Layers:
	-	`sha256:f947a7c1c4b3071d3be17b85b0b6570b3383b968eee55761756aebe0e242b7a3`  
		Last Modified: Fri, 20 Nov 2026 17:47:07 GMT  
		Size: 5.2 MB (5235933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0072a580dd2fd75d335c1ed3a738360d18016fb780551a027f619b4e7b9261e`  
		Last Modified: Fri, 20 Nov 2026 17:47:07 GMT  
		Size: 16.8 KB (16788 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:bb113c51a7d5dce298add507c7c7348af782a065f4bff807e18582f52eb1e655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.2 MB (198199957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6459d13c95a52b2563fecd37584f314bbfd92149af41d9f550570867dd1758bb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:51:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:51:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:51:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:51:04 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:51:06 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:55:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:55:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:55:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:55:57 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:55:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a69284f7eb071fdfb4711ceca0eb2d57c4404d3dea9963ba6a60f092a2d00b9`  
		Last Modified: Fri, 20 Nov 2026 19:54:54 GMT  
		Size: 90.1 MB (90119618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee30aa2d433fde08d4b36a13302cc0b6d72af0341afd2cb5427182de20aac4e9`  
		Last Modified: Fri, 20 Nov 2026 19:56:38 GMT  
		Size: 74.4 MB (74411146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5489f9183997a5aca11c1d0d31e7046061780303033b211a27d278638386193b`  
		Last Modified: Fri, 20 Nov 2026 19:56:36 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5911dbda0978961140b85c64e0e074d537a29c1fa5b8c80d66da3510255a734`  
		Last Modified: Fri, 20 Nov 2026 19:56:36 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:728ff25f8c6ba1424b383900d0fe808aa3b5520f1b35a14d40770dc96ddfb128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4371b7784752f40b048f4fdf436d8f657da55048b645c9064bf5564092d5cf25`

```dockerfile
```

-	Layers:
	-	`sha256:29c0913df97be60ccded3d23170958da002279ec44ef7857e8764ff5f33fed96`  
		Last Modified: Fri, 20 Nov 2026 19:56:36 GMT  
		Size: 5.2 MB (5215985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7e773dfa927040836ec6ce692827abe1a3ed2e8d6ca80a1226b3978c19fc6c9`  
		Last Modified: Fri, 20 Nov 2026 19:56:36 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
