## `clojure:temurin-11-trixie`

```console
$ docker pull clojure@sha256:65463002cec362e1f79f9310e2325d7e15781a575871d15f122e7f0a04463370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:bb429e98f6b8f8b2d70f6c1b6a0000715c1130b149b70544d58838ae9ce255c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277914958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6481add4ca6de1d9dd9f05e9f39e026f344f2948dc77c55b49902c77d42198f5`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:09:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:09:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:09:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:09:41 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:09:41 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:09:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:09:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:09:56 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3170a395481a2e468ed5fac6f1af90799f2c6d382108628163320ab697aba1f8`  
		Last Modified: Tue, 24 Nov 2026 05:10:17 GMT  
		Size: 145.9 MB (145923081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b2f639cbac007f6583202230bc5aabefb861e885b63f0b80a33533ffa974af`  
		Last Modified: Tue, 24 Nov 2026 05:10:16 GMT  
		Size: 82.6 MB (82581945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f80b37f49f8eaa47e1ff8928dd5e32118c3d4c7e74a1fe696d894b84908dcb9f`  
		Last Modified: Tue, 24 Nov 2026 05:10:13 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:00fcf1e9687a68b033344eccd16e6b6a599c86f70608ca0e3ee2b8e2ca083f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7509864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be9932fb891a5726494cbd0663a90210c12aec0b1f4559e4aa97b02cf2081da7`

```dockerfile
```

-	Layers:
	-	`sha256:40fa832a4e51f7ac59ba6024cb73f222f0e102689e2acbb4a8fe6f3077937165`  
		Last Modified: Tue, 24 Nov 2026 05:10:14 GMT  
		Size: 7.5 MB (7495525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41fa18bb134a159ef00fdac0b4e04a9c1294afa763bd006cf5ce0eb07d6ef69c`  
		Last Modified: Tue, 24 Nov 2026 05:10:13 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8e046291b26823d17dd0087468b807f80ea6897509f1a769ace6cf86ab3e6fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274803445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18912fda00440c217f75f37c2448df3be314707ef412f3fff5b1d4e6e882743e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:17:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:17:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:17:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:17:20 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:17:20 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:17:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:17:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:17:37 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd4b2876e55883b2241ca48568eb6491a8af8b97159da447a3f8d760b0883d2`  
		Last Modified: Tue, 24 Nov 2026 05:18:02 GMT  
		Size: 142.6 MB (142621117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55449b198dbe4206ad3fb1e8df9ae9c3c9d5373d051c633c55fd9678443af14d`  
		Last Modified: Tue, 24 Nov 2026 05:18:01 GMT  
		Size: 82.4 MB (82411602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b2af7b4736f09e34fed14caf75a235a48be3e340fbce94b655a05870af4898`  
		Last Modified: Tue, 24 Nov 2026 05:17:58 GMT  
		Size: 608.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b90f2831f7d8c915abe42d141aba54a2646791f44fbf0dcc6d97eb23839b47ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88373738d0ef10217434d8eb4af9d8e6f30113c12fffa5902cc38000479d4fbd`

```dockerfile
```

-	Layers:
	-	`sha256:ec145b501385b8ce7ea449ca81591f9ea6e488162b186c4bbb27328dbb1689df`  
		Last Modified: Tue, 24 Nov 2026 05:17:58 GMT  
		Size: 7.5 MB (7502536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa4e6835dc4eb8ff1d224eac04322aaf09939199691eb8cde9de548df6c20e77`  
		Last Modified: Tue, 24 Nov 2026 05:17:58 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:1ec4c38d8c1ac90821f8a308ec823c2f76e38a47750c96770ed9b88c44ce60d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273506095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f133b6bb5ad4fd406dab42ed2e8a5c0ece06e7f6f98f91586145c21d105a5f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 12:26:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:26:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:26:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:26:29 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 12:26:30 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:32:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 12:32:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 12:32:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601dc47421a3ce95bbcf5d65d5542e0e22fcfb207100c4a0cfb319ee562e617f`  
		Last Modified: Tue, 24 Nov 2026 12:30:00 GMT  
		Size: 132.3 MB (132272163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ef33602614f1f6c1bcf94ec910fb5ac3bd65ef66b6bc2881895fee7a55df4b`  
		Last Modified: Tue, 24 Nov 2026 12:33:00 GMT  
		Size: 88.0 MB (88003445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539f3320ddacfd8dcd6485ce9d43b2071000c96a5b88fddd84a9eae6e5667596`  
		Last Modified: Tue, 24 Nov 2026 12:32:58 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4a3b2dddcea8b7595d5ddd8c9d51f21950fe2cfe3019f0fb2c04d86494128cd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7512466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08063d18731508ce78e4231ca3e024f0dfa3694d468d0720fd2fcd59e03fb645`

```dockerfile
```

-	Layers:
	-	`sha256:aad1e672fa0ddbfd1caa90fc97c2685300582f92769612ae7446a805b0fe8e6c`  
		Last Modified: Tue, 24 Nov 2026 12:32:58 GMT  
		Size: 7.5 MB (7498079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df89e676adbf1b53871344e10ac3ce766517919b7d4d329427bafa3c9804d6a0`  
		Last Modified: Tue, 24 Nov 2026 12:32:57 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
