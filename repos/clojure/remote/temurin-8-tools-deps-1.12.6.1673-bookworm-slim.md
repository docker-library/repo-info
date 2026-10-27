## `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:3ffcb546f3209ec258ba44c3e8d18065e0318b6d7fcbf17368b6dc79c09b4c57
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0a9154256e3485c3e1c60393c5e24ee72b8ca0a8c1740a0f30b174863ca70a3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149948579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8c8b4edf811be0e64b67a49cb1e029be83557d85753d9f368b13422fecd810`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:45:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:45:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:45:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:45:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:45:52 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:46:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:46:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:46:06 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67663a911acbabffe5a3633db42d20bd8315fd194f81a45718a054d5ca88c288`  
		Last Modified: Tue, 27 Oct 2026 00:46:24 GMT  
		Size: 55.2 MB (55192247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc16604cf383c614dcd6ce992f195879ea18e47ba116783044360e38508fc2f4`  
		Last Modified: Tue, 27 Oct 2026 00:46:24 GMT  
		Size: 66.5 MB (66507752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2617b2bcf71eaf9ebf3f1b392ac6abff8dd60335ce73541f63d090feeac0819`  
		Last Modified: Tue, 27 Oct 2026 00:46:21 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e84d731b8f971c9ad6e0e6aadc1255ba5b3ec135efb56023e8a4e7088bb2a2e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41de9ad60b60d2df7909b737b9c7d13c4d30845e8c25397871c74b632156c31b`

```dockerfile
```

-	Layers:
	-	`sha256:3989d7877c31deb69b8f598f03ce90c48c67078ae25b29981e816370f257e6eb`  
		Last Modified: Tue, 27 Oct 2026 00:46:21 GMT  
		Size: 5.2 MB (5238395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e972f6b025df487cd95a7c7239bf5920f722bca4ca2c17c85e24366fc8b18cac`  
		Last Modified: Tue, 27 Oct 2026 00:46:21 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:78610d780fe44317b96c0fadc463b9073e2b28f2c2ee8341d554aafc5da1ea86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148894432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b928f8d92dbbbead10f3473e47e39c094a636e33b244591cc5589375c35db8`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:45:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:45:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:45:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:45:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:45:31 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:45:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:45:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:45:45 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2db3e9b6da6d8d07df1fe5a867c935d6b9895c2afdaf1986d04e4a36815308f`  
		Last Modified: Tue, 27 Oct 2026 00:46:02 GMT  
		Size: 54.3 MB (54254273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86a738958b616475ab906669fadc685fb7e51a84bfdd83806f14c42d8dca1df`  
		Last Modified: Tue, 27 Oct 2026 00:46:03 GMT  
		Size: 66.5 MB (66501087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03027224735a6d625892fda5aeaffdd4b0f5e2e94b7d084d2e24f86a5da159e`  
		Last Modified: Tue, 27 Oct 2026 00:46:00 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ab00600371d436640f07698b04013fb5305dff0fb6acfd2f0aa981975f92d332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ba7479c443f918f8b86fa1755c81fbb870937fee99acaebd1e574ad2094d97`

```dockerfile
```

-	Layers:
	-	`sha256:02424e6f2c65e7263b3da77526f41d8d291aa8efc6e90383b00d64d629bf30ad`  
		Last Modified: Tue, 27 Oct 2026 00:46:00 GMT  
		Size: 5.2 MB (5244856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2867d4222d793aad7a5cb58432d2e3294083491a71d12d3f64fbc69a7522c04c`  
		Last Modified: Tue, 27 Oct 2026 00:46:00 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9c47bee7b2331c97c6b19fd7cb70edb29539f291533c71848b91ebc475b9ca94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157094581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2a36cf51c5cff1ed918920f0cde53447cff8e848f0726ba102b91fa4dc3193`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:28:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:28:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:28:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:28:23 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:28:24 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:29:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:29:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:29:15 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2859ad61776f7d2e2779749854be4be1a677600ca4cd30693ea6c9791fdd442`  
		Last Modified: Wed, 21 Oct 2026 11:29:51 GMT  
		Size: 52.7 MB (52667132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f929ddea526eb91e64091434729374f6049f18dbb17ccdeb8a568b4e85805c`  
		Last Modified: Wed, 21 Oct 2026 11:29:52 GMT  
		Size: 72.3 MB (72333594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c57feda8f22bbaabbc486fbefc69cf34ec3d26ffe472ccc711a2d9be7f4e336`  
		Last Modified: Wed, 21 Oct 2026 11:29:49 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:25ef875c6b9456b06123e4d7a4b2a7c2cea652fe003510b8d524565e5361b764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5258570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01622663e6bf190554717b6e75edbf33968daad4842985a84dd3247ef4c38234`

```dockerfile
```

-	Layers:
	-	`sha256:271d16b9904aadb08897b2f6bf270687f1210c1d7b7a02da2e80f12f2b65bf6b`  
		Last Modified: Wed, 21 Oct 2026 11:29:49 GMT  
		Size: 5.2 MB (5244120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bddaa3745c014658025bfef1dfc814871892ea42643d97ea9f291b5d7be7b5fa`  
		Last Modified: Wed, 21 Oct 2026 11:29:49 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
