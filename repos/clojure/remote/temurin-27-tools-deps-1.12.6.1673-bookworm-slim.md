## `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:d0937acafc0f28233ed3df8d12971c07fde3297fa93ef181e78cfa88bfdf6bd1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:fcfb5b12f271d0af4bd9f4911c0923ca1c5d746f4b7aa26f7d6edf5a34d6145f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188379138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd8bd493ba6066a00114bb5d5a2e80df6234618b579c25d211521a2a1b645b02`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:54:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:54:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:54:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:54:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:54:45 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:54:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:54:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:54:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:54:59 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:54:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba5c35521bd364d542f6800793ef254a0befa1bf14ee0c62af46d72c05e71f16`  
		Last Modified: Tue, 27 Oct 2026 00:55:20 GMT  
		Size: 93.6 MB (93622528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2996c3674c2b21cf89148242eb0c98b5e7a6cadcf406d3df4d649e6eaca919a9`  
		Last Modified: Tue, 27 Oct 2026 00:55:19 GMT  
		Size: 66.5 MB (66507631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d45eb8a3866f67dbe1106454d36ba162c05412d5487b90ae53d258d1483185`  
		Last Modified: Tue, 27 Oct 2026 00:55:17 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42b5a3cba716361a54fdc953ebad1093fc02874a5da8b18f9591aef158ea7f7`  
		Last Modified: Tue, 27 Oct 2026 00:55:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7f57b2a4cbe6a935c410c572a4f8da3fdbc58eb9022320cbf06700b3a89e155a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551a92ed0ad8532f4d460c383750e35a4b963f24a53edb7786e79dd6354679ad`

```dockerfile
```

-	Layers:
	-	`sha256:a3382b902ab8a9e67a64a6ee5605afcb4125a1fde10032ca43b0269c26e172d9`  
		Last Modified: Tue, 27 Oct 2026 00:55:17 GMT  
		Size: 5.1 MB (5081665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0baddd203ab4c5cf70e3f22ec22da48b4b219461d081d11540d80e73ba7ab280`  
		Last Modified: Tue, 27 Oct 2026 00:55:16 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:728e35cb288be0a03ae3bae99b4ecf9aa3551d8ba347349b9568c6a576bee82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187272966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a088412f950660a2337d34ac98d86f3d5cba3f312c9b90962cd789a659a19f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:24:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:24:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:24:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:24:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:24:17 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:24:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:24:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:24:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:24:32 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:24:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aa347a500fab7ba6b261a28266f5097a5ae3a2c335b8df970888a9ccb9edcf7`  
		Last Modified: Wed, 28 Oct 2026 02:24:54 GMT  
		Size: 92.6 MB (92633146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6224fdb46501c4e924dbf849dfdcbedf2a9e3540cbf22bfa6bbecf2c6c42edfa`  
		Last Modified: Wed, 28 Oct 2026 02:24:54 GMT  
		Size: 66.5 MB (66500827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889782f16441341ed52bb7f62c7dfa2b9cdaace5babd4248defa43f982f0c048`  
		Last Modified: Wed, 28 Oct 2026 02:24:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897a8515751c7cb2d59f5ca891d946693ac2e305b1750018e54bc33fc544e73c`  
		Last Modified: Wed, 28 Oct 2026 02:24:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a412d210acbf2ca9a21e37ff0a1e81910453baf0f34b2156dc27fe7bfb91e7cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5103524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff15691c42f20928c7a5e1312fb0c66409dbdfba122332a2d43a2a994866966`

```dockerfile
```

-	Layers:
	-	`sha256:a4dba23cbb808000765eec3696c9d10b7c99fb05345b7196716bb700655c2434`  
		Last Modified: Wed, 28 Oct 2026 02:24:51 GMT  
		Size: 5.1 MB (5087423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:568a21f118caa25bd84a3ad9abed9b373b9ef9f97ae09deb5fa176bd0a2f8781`  
		Last Modified: Wed, 28 Oct 2026 02:24:50 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1a9de4662079a46835e21ff4328d3944aff175da4f3c4a00dc5eb73929ef24b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196683106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c085ce3495a90650a4197dab3e7c65749bcd1cee9c4e8080eacf810c6c408f08`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:17:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:17:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:17:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:17:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:17:25 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:27:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:27:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:27:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:27:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:27:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ec518236d5067a8af035d0726c270d0334bcfe44ec1a32d3c23943fe275b8b7`  
		Last Modified: Wed, 21 Oct 2026 11:21:23 GMT  
		Size: 92.3 MB (92255784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538844d2a08a00077cdaf1d69ae2e303722d2cafa8839e2197ad9b15657de734`  
		Last Modified: Wed, 21 Oct 2026 11:27:52 GMT  
		Size: 72.3 MB (72333069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa54248efd748553476d08f72aa2482d3209dc5085785706cde14578c4c0e5d`  
		Last Modified: Wed, 21 Oct 2026 11:27:49 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f85068c0cadd0d623548e406113467a1988ac0efff67992b41e139ded6a1cc`  
		Last Modified: Wed, 21 Oct 2026 11:27:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0c8cc1a8e7a0095a77ada2a26b34098a6861310e81f5cdaa252332d10f207740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5086762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ce695cb04701cfba5da1a43d118cc6f5364589c48a0e49333648263c6a42e2`

```dockerfile
```

-	Layers:
	-	`sha256:60a7c172f1a5629516b8c7f5f4d5bc822305bd718be5bff851623294eb425b7f`  
		Last Modified: Wed, 21 Oct 2026 11:27:50 GMT  
		Size: 5.1 MB (5070731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f5c045ce3765484be908ece3183f199abd0017e9c65633064f2f85cbef65a45`  
		Last Modified: Wed, 21 Oct 2026 11:27:49 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json
