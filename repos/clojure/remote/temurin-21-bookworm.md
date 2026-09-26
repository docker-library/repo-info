## `clojure:temurin-21-bookworm`

```console
$ docker pull clojure@sha256:59f3e783bcbbd23c3c22455914ab91c13c3144af6284c65b7f84bc8db4126efb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:fb762add2054072db6c4028d62cc73c11f37612e13adc693b38fd7bad0e09881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284804449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a7a826dc0b343bb19590fcf7712774bad7e475e3426ae7cde707141cc5e3ce`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:23:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:23:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:23:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:23:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:23:14 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:23:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:23:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:23:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:23:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:23:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75e26a0831a33da1555f39ccbb089697b8487791074dbf90f70e485bf2a25f9`  
		Last Modified: Fri, 25 Sep 2026 23:23:53 GMT  
		Size: 158.1 MB (158117504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82afc9459aca4385896c6044408dcbea05178b51813c1715830ee6045787d2d7`  
		Last Modified: Fri, 25 Sep 2026 23:23:52 GMT  
		Size: 78.2 MB (78182466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52fbb744a21ae724bee22d594888d927ebe389063758bb450e9421b96e8dbee`  
		Last Modified: Fri, 25 Sep 2026 23:23:49 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e384f298bc80b4b2ba3c4c2ba8db55743216e0103d0d844cc25cbef3453f87`  
		Last Modified: Fri, 25 Sep 2026 23:23:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d1fa090416d5ac317934bc4c9d10051cfebc9d3c51b63cb44478d420c3344925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7399792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972545d97983648fa59fe79b70785fef3e3e1d8f4fc7aa77fa328fe337fe5e92`

```dockerfile
```

-	Layers:
	-	`sha256:035758e3b0a1ca9391824c610c082a56403688fe3a880940f3277aadb64edb29`  
		Last Modified: Fri, 25 Sep 2026 23:23:49 GMT  
		Size: 7.4 MB (7383176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7e10c85c76a19701fb99cd4fb88ae83ed79478470bf0566af208241a2ba13ab`  
		Last Modified: Fri, 25 Sep 2026 23:23:49 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8e16292cd91901d984935fcecac12e332ea3b3d0461c3e1ce17d32ae3c517975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 MB (282964390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:028fdf9f655d3164ec4ccf7ac01163b538a90a29b34651173da80d48b52d1685`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:20:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:20:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:20:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:20:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:20:49 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:21:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:21:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:21:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:21:05 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:21:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0275fae7d89b889aed9123b4a380a972b647b9ee9a95151e373dc35880e60f`  
		Last Modified: Fri, 25 Sep 2026 23:21:29 GMT  
		Size: 156.4 MB (156400655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c186de3d79bbcbe0f587b79a13c5a4d4b5e70b15baa865ec8570d3373145a790`  
		Last Modified: Fri, 25 Sep 2026 23:21:28 GMT  
		Size: 78.2 MB (78172785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c867ccf872ca370f163b733dc64357da4a89144421373864d2bb75d4291dbf`  
		Last Modified: Fri, 25 Sep 2026 23:21:25 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:affb7ef73be7cc5216e2ca16216e079d845aee9ea06b307c987482d641ad7479`  
		Last Modified: Fri, 25 Sep 2026 23:21:25 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:096eb81a8729f102d83f83ec2e6e6d6f93f29510cf1cda83ea16f41bdf10f069
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:260a9c1a8cca63c1f3775ebc52fd080b848a1864e728904f4cfe0ff589db9901`

```dockerfile
```

-	Layers:
	-	`sha256:036092e3013306ac724fa8ba5636ac35f100734646d452736b07c7810dbf90e2`  
		Last Modified: Fri, 25 Sep 2026 23:21:26 GMT  
		Size: 7.4 MB (7388963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6a9a9cf7bd11fdd1a8ad9845b3dec08b8faaf93a5e3fd759a263e534d8272b0`  
		Last Modified: Fri, 25 Sep 2026 23:21:25 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:45f654c176d110e8572a69f448b27201f3a235c8751446aeae1cdc7547d04d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294625898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d80a47fc18508e99c34cc80c739add2460a4b57636140a0ab59b9041a6fcd6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 04:50:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:50:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:50:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:50:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 04:50:57 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:09:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:09:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:09:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:09:53 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:09:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb6bf326805d33db5f2eeb52843cedf33600a8cff5a57e18937a394c05f6f08`  
		Last Modified: Sat, 26 Sep 2026 04:53:55 GMT  
		Size: 158.3 MB (158282667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33134a53623912a483f7953f87bc8536d9fc9b66b9e6e57d965c38a343670c57`  
		Last Modified: Sat, 26 Sep 2026 05:10:31 GMT  
		Size: 84.0 MB (83992888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d012664ee61b64b886772ccd14938d70c8d50c4b96a25cf91360a15f9d2f59cb`  
		Last Modified: Sat, 26 Sep 2026 05:10:28 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e8e97ddc4c3e28f37489336470d313507b6a50e740f311df7f1ef862156941`  
		Last Modified: Sat, 26 Sep 2026 05:10:28 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:06545c54d67e63f506695d08d7e2402bcd39855c11a0951548e0ca4865e97174
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1d1fcad181f1dba9819aeee356a40904bbf458272e1b2250ddcd35e8eeebd5`

```dockerfile
```

-	Layers:
	-	`sha256:31f3b57e1fa111fc9d965bbe341e5d310d94f79ee6b5a3f4f28fd9b273e84f88`  
		Last Modified: Sat, 26 Sep 2026 05:10:29 GMT  
		Size: 7.4 MB (7388402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7587745e042ca65de943146dca7d0e7693d661dd59819d656b443ca0739cf855`  
		Last Modified: Sat, 26 Sep 2026 05:10:28 GMT  
		Size: 16.7 KB (16676 bytes)  
		MIME: application/vnd.in-toto+json
