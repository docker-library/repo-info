## `clojure:temurin-25-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:5ad8b0621ce3c9a06c0dd1da13b291b11f23dafd24f69fd01a3185e804b9c943
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:55a5905fdf58ddf2549a7290b7dca2ca794850911ac160062412af226bb33cbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143720569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70a9b4847eca99a44145b8590030f52276fc5b1f68fba9d5ec05aa14a72a132a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sun, 11 Oct 2026 13:11:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:11:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:11:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:11:45 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:11:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:11:45 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:12:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:12:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:12:56 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:12:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:12:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:12:58 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:12:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e579d6ea95e2e7ed2b9ba81ae64a5a514acba32e8eec404e5e8e3119e08cde`  
		Last Modified: Sun, 11 Oct 2026 13:13:16 GMT  
		Size: 92.6 MB (92618078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4989860fe5c67dd8ae3b534636cdd07551f79e370a53269dcee702ae8d14f9f`  
		Last Modified: Sun, 11 Oct 2026 13:13:15 GMT  
		Size: 16.7 MB (16743503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7a7b290f3ba330f8c1bcb46096fba4f96354efb55a524f284ad2925cffc4c5`  
		Last Modified: Sun, 11 Oct 2026 13:13:14 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cb36a8b2712fb8c6603086f5e88eb3189070857e3965caacfa274f056b177e`  
		Last Modified: Sun, 11 Oct 2026 13:13:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:86327514b88936f39c2f3f1bfcc807a7afe5a68424af9b61403e0d7f98b605fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b23116e8ebd3a0183251d0226ffe0df4e5c6a574655f9ed9fc6fc5ec9f6469d`

```dockerfile
```

-	Layers:
	-	`sha256:9b8b85136a3f4040be9a9e4e159c12da073f931e47bb3a1664dd55dd53daae39`  
		Last Modified: Sun, 11 Oct 2026 13:13:14 GMT  
		Size: 2.3 MB (2341081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f359213e7514480908a5a5116e56f18a2b16eeb7c24eb1a5b3b5dff5842d6a6c`  
		Last Modified: Sun, 11 Oct 2026 13:13:14 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:182637b12b17c87669145c195415629c8daa49b97c82efb118d94ba822822d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142956959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12eb7cab8db10db42fb20c8e561d838e6617d9df4a4535b6ccdce5af79a2a21c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sun, 11 Oct 2026 13:11:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:11:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:11:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:11:37 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:11:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:11:37 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:12:53 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:12:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:12:53 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:12:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:12:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:12:55 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:12:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13fc1a39b32b325e10a50bec3d8000b4d6c0848fc9b307821ffcafdcf281018d`  
		Last Modified: Sun, 11 Oct 2026 13:13:13 GMT  
		Size: 91.5 MB (91528844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d266ddb2b4999cf7b9c59a98c34d818b704a9bffb955566ce6f2c526dcbe0e8`  
		Last Modified: Sun, 11 Oct 2026 13:13:12 GMT  
		Size: 16.7 MB (16712194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ed208a3e145a9fb47a1df299db5f43df4fe059d159da568e6164c9956592aad`  
		Last Modified: Sun, 11 Oct 2026 13:13:11 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac6b523c723239519290ebba4bf6ef4c9de8a84f058e7af798c8b5580fb2106`  
		Last Modified: Sun, 11 Oct 2026 13:13:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a24c3e49eb36b1f63e295b06d886f84b04c4fbc3259910ade5a1a350debd213f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f98a4419e7f9f291358629b4ad0c4112c69e8ca02e12c5dd0a90d90aed30ee`

```dockerfile
```

-	Layers:
	-	`sha256:59b4c76ce404dc04a27cdb74bcc07578f8f9f364e8ade2c6abe81e73a46dd3c7`  
		Last Modified: Sun, 11 Oct 2026 13:13:11 GMT  
		Size: 2.3 MB (2340712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f21195eaecbd9fe8c23b76392ab74858b473c718209f46d86c9446f25d1ea65b`  
		Last Modified: Sun, 11 Oct 2026 13:13:11 GMT  
		Size: 18.5 KB (18545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:c2ed83f04158d9f855c5257b9d5adc5a4236e960b3cd0f3f92b0f466c0667a73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146205517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19533e89cf31175a23f20d3e9527110ff89b906ff38fa0ad6a2205cc189fd15d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:38:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:38:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:38:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:38:06 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:38:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:38:07 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:41:54 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:41:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:41:54 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:41:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:41:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:41:59 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:41:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f78a9e985677056dcdd0088b36c6a3bccbb1c48ff1954f5c529444f55b34a0`  
		Last Modified: Tue, 06 Oct 2026 10:42:47 GMT  
		Size: 91.3 MB (91256257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7717095722dd8e6e00e45696fe8952bc7fc4d499affc087e55f1d2d297a673a`  
		Last Modified: Tue, 06 Oct 2026 10:42:45 GMT  
		Size: 16.8 MB (16782011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4e9f4766699059631b9b470f9e9488c160395b8b4faff8133032e89dadd059`  
		Last Modified: Tue, 06 Oct 2026 10:42:45 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0be1a86c19e0688206bb69108392e1af9c8bdec33756f21db695f3e0d86f251`  
		Last Modified: Tue, 06 Oct 2026 10:42:45 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8388308069ef816016c626cdd740ac9c0af816ae0342898ff4abed0599d8aa9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2343841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef47984c586a0fe4b5c4da11a41e11d7721ff547609b27da61ab9137f1c395f`

```dockerfile
```

-	Layers:
	-	`sha256:1c7d2c3a4a545c8339ea7240a9d40d6a4d4ff24c5a8b0959aa39d95d7291294f`  
		Last Modified: Tue, 06 Oct 2026 10:42:45 GMT  
		Size: 2.3 MB (2325385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dd7227282241fe90b9db9fe21fd21ff782858b0ba8ff0ca1d7591bfcc879b08`  
		Last Modified: Tue, 06 Oct 2026 10:42:44 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json
