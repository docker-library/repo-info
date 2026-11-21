## `clojure:temurin-27-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:c50283dae2d1c4a1574a9aa45c6a5f6bf31518908ad9c29a09e42ccb962bbd38
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:8fdcdf3ae4478771dc78dd6ceec9c3b39acde221bc9f9323cd91da652f5d2e99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166825271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4f8c1c6780191de7f94118bab2d2d2f465e1a784b5eb5da6d32e3a16b88516`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 18:11:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:11:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:11:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:11:24 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:11:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:11:24 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:12:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:12:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:12:34 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:12:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:12:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:12:36 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:12:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047723e9fd50228cafdfdaf2e5565b31f6e51b7749ebee77a62b1027cb9630f4`  
		Last Modified: Fri, 20 Nov 2026 18:12:59 GMT  
		Size: 93.6 MB (93649656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883dcabdbd0f668ef557a96752926d477b9ae408c889855be74ae8b8102e2bfc`  
		Last Modified: Fri, 20 Nov 2026 18:12:57 GMT  
		Size: 20.1 MB (20132984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a71608514239bae1018d132365fa78c3ef865b3dab5e4b9e8c7bc0828775e4`  
		Last Modified: Fri, 20 Nov 2026 18:12:56 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f29c000196c4fe4a6d01cbc62c573014615fe76858ebc8076c5ac1865348e1`  
		Last Modified: Fri, 20 Nov 2026 18:12:56 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e98ec2f31237dd4ec2f28dea143f7ac48927bda383cd9db0887b9f1f13e66059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfca27464719eeb0d7cd859150c847a3c6ec1fa620e9900082fdd1d401a17750`

```dockerfile
```

-	Layers:
	-	`sha256:4a0bf78f39fbc1467355cba175a6a7d41833bd4cffe327b76bcf7bd496414bb3`  
		Last Modified: Fri, 20 Nov 2026 18:12:56 GMT  
		Size: 4.3 MB (4252300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67e9b1df63fe20228b243225d79430f45c2eeadaf1c2f88414f6b7e3fc519d8e`  
		Last Modified: Fri, 20 Nov 2026 18:12:56 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d22582a714a71b7fd5a1555447d6386b1773fb9e380c6f2972f2b300db4e5c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.6 MB (165556148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d732a23ee16de1e8c4bbb1cb084a788b35f6440a48811b5300d8c48cdb03e806`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:07:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:07:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:07:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:07:33 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:07:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:07:33 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:08:49 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:08:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:08:49 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:08:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:08:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:08:51 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:08:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d8ba91ce0c47c572d281b1d0193ce91f39759a30ebf17d68c8189f16959b29`  
		Last Modified: Thu, 12 Nov 2026 01:09:11 GMT  
		Size: 92.7 MB (92660443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ac4519f97d16723da672d8a46ce51f14f75944ad69b89ce07bdde8a7727cff`  
		Last Modified: Thu, 12 Nov 2026 01:09:09 GMT  
		Size: 20.0 MB (19967117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817018f51ddd74240dbacfa41cefadac548d7b9f69ce560e059a2776b576c8b5`  
		Last Modified: Thu, 12 Nov 2026 01:09:09 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c894623cd29d4bfa056f1c17132f02f078af9c54eaa016b5e54ecc784fc86e`  
		Last Modified: Thu, 12 Nov 2026 01:09:08 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2aa8f72327b4b55bea2fcafd10ae67aaaaccc998abf711607ac70a65aad62970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e991009dbcd90fd229d710a2ec4cc91c5f0ea004334c9984361dac981dca75b0`

```dockerfile
```

-	Layers:
	-	`sha256:d3cef71d537e9c728a2284a4c529b1fa752231396eefcf1ee340a0c4850283a7`  
		Last Modified: Thu, 12 Nov 2026 01:09:09 GMT  
		Size: 4.3 MB (4251944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8e25cae2269a32783b3eb725393ce4bc0e546829cbdaa18346a9763968d4223`  
		Last Modified: Thu, 12 Nov 2026 01:09:08 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:31e1c40c416810f798a8d6dda29e34408207678c20f950d243f29a2d264defbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169175559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd1b8e0ff164e9d640e192a85fdd3ed60b4cf6758d36638cb0ecdb78286808a0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:57:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:57:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:57:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:57:05 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:57:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:57:06 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 20:00:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 20:00:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 20:00:34 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 20:00:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 20:00:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 20:00:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 20:00:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f512e475e60dd5f0311febda94f2e5a8411f9077eceb64aefdb2f2369ae97a9b`  
		Last Modified: Fri, 20 Nov 2026 20:01:22 GMT  
		Size: 91.9 MB (91933317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ad4d58dea6812ede69c62b257d5a114c458b785e088dc6a7f450a7f56bb98f`  
		Last Modified: Fri, 20 Nov 2026 20:01:20 GMT  
		Size: 20.4 MB (20357482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dca0812ebb34a42ce9e1f04b2be5812059b5c2e18eb1dc48e31b0cb9f002ad3`  
		Last Modified: Fri, 20 Nov 2026 20:01:19 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f7064ea9ebc4240e3269cda125f3167cbe8a4677ea1711d3b87cfb3b3a55927`  
		Last Modified: Fri, 20 Nov 2026 20:01:19 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f2e8849cffb6015ef3f30e58c04a6b9ce1c6d381950f7a2c2a60f9dd06641991
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4254685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a5ae9bad91b60e13cba5cb93bd52403b2240d942c1af8b9228d7d993bd25ab`

```dockerfile
```

-	Layers:
	-	`sha256:6da59c4ec7ee1638944cbaac6659db0292010f223d202f54e10a928254a3e86c`  
		Last Modified: Fri, 20 Nov 2026 20:01:19 GMT  
		Size: 4.2 MB (4236248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d80e3b3b144dde808c2f4aaefc5e767e572d92cdbfa73bf18c0115952f254bae`  
		Last Modified: Fri, 20 Nov 2026 20:01:19 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json
