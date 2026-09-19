## `clojure:temurin-11-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:679a875836c133efe66d84aa63a854f9e3c467d8b5c0b56cf399c721c88ba319
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0fca94858a01a6eb9f99c51767475d6cb44415a10c79024aea1680facc0cf51f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244684249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1e1a28f89116ab3da2885f9903f42f1fb18e079cfe5f5efd46fa1ad5244b068`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:14:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:14:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:14:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:14:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:14:30 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:14:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:14:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:14:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183069bf6ff20b298ce6b537b38cdc19b64c27c94679376a804847d61eed3857`  
		Last Modified: Sat, 19 Sep 2026 01:15:10 GMT  
		Size: 145.9 MB (145861347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4b14469973b57334b4eca80e1d15976e81a47e8a1245bdea26621829e6ece6`  
		Last Modified: Sat, 19 Sep 2026 01:15:09 GMT  
		Size: 69.0 MB (68991839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86670d8303ed8e7a9ca2e8ecfaed1a3ae6dfec5900fdaf9e4bfb259b19badbc6`  
		Last Modified: Sat, 19 Sep 2026 01:15:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e209f8fc0fa679c4865d386b41045f82f1b0b7089844091a577f7a6c067af575
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bceeda51b2ea01aac519a7852e523880795a4c875e754a2af16416739c691830`

```dockerfile
```

-	Layers:
	-	`sha256:9f4f681b1ef2ecdb16a692e66052e96a97bdd236d792e0d8681970857fa95c12`  
		Last Modified: Sat, 19 Sep 2026 01:15:06 GMT  
		Size: 5.3 MB (5282822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:931b9776cea156611316ff3bd06298317ad3b534bbe1fcf1f841fc91b4df34c9`  
		Last Modified: Sat, 19 Sep 2026 01:15:06 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d63351004de324b4a7da3cc71d4db35bf12c461100de1b1b30182c802217ca80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241565261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d5035e0b439b210221eeabd4e3c1867e4516032eec7597885b35eb346b72db`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 00:50:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 00:50:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:50:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:21:28 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:21:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:21:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:21:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55edbfb8ccdb34d0c0e344bca10143f47574575df0e86302d2a821e639cd62b2`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 142.6 MB (142566263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a835d47dca4ba912d30cafd6e2791335253be7d4abfeb166cdd934e4ea9dd33e`  
		Last Modified: Sat, 19 Sep 2026 01:22:05 GMT  
		Size: 68.8 MB (68808662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:788ac70d83db7815daacb0775cfd0020d9e7346204da298fbc15e925643b18a8`  
		Last Modified: Sat, 19 Sep 2026 01:22:04 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f4c00b85ebc660feee3b427a12b02b63a569049578143960386b8be5b3306c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4204305c3a8fbeb7a699d2ae8b21b1490959b7242ed5c7bb904f23ea3d361447`

```dockerfile
```

-	Layers:
	-	`sha256:d107054d9df4f06715dd314a63e5cd492200f8a386b3ed938c62ec0a3c470eb1`  
		Last Modified: Sat, 19 Sep 2026 01:22:04 GMT  
		Size: 5.3 MB (5289201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:219b966fcac4910012c316d5c376fbadc0dd1fabe8576f3330ce84d1e8b0b641`  
		Last Modified: Sat, 19 Sep 2026 01:22:04 GMT  
		Size: 13.6 KB (13560 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7a45b517994426e0c77b516a80a1d273c5e76df14792630758bd93f7df45e76d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241143644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3edaed9c762cf415169fe76f2de466da0f91960dd5e38a53ba6550f989ca1adf`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:43:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:43:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:43:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:43:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:43:53 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:50:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:50:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:50:53 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccae2a29775f4b87ed1664fa003cbd6f8018f51b1b85e136fdd9c8eae069cde`  
		Last Modified: Sat, 19 Sep 2026 07:48:21 GMT  
		Size: 133.1 MB (133090122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9cbe0b517431a8d03080ceb00d7ba2738b4b5b84568397ed020ff04ae531cb1`  
		Last Modified: Sat, 19 Sep 2026 07:51:37 GMT  
		Size: 74.4 MB (74411642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af2052e61217d544f4ee131c64db5723940097a01f677f8fc670c77efb876aa`  
		Last Modified: Sat, 19 Sep 2026 07:51:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9bd9825bdac7400609add367b120e91ea48a4d7f2b322e38703fae76585a9f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5301023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a45a03142b9dfc7b303f464d807b31930d941fdf8701a7133b8ddfe784c468e`

```dockerfile
```

-	Layers:
	-	`sha256:4f04373d7e6d53e58ad951f3ed9a5eded32fcfba8871672e8db947262b57c2cd`  
		Last Modified: Sat, 19 Sep 2026 07:51:35 GMT  
		Size: 5.3 MB (5286578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a719441303153d7028752963e22fa06728e72871b25f5378044de67c6cc03e9b`  
		Last Modified: Sat, 19 Sep 2026 07:51:35 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
