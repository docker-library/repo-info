## `clojure:temurin-17-lein-bookworm`

```console
$ docker pull clojure@sha256:5c4f6bf32b9d1370c18800182bc9a5ab93842deb9a59cce0d186e2b8db5212b4
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

### `clojure:temurin-17-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:0a8e00b0403ed25a3ab05b583e097b5fc83d7299bbcca01da776efd7d97549a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219038410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf3435b26bc1b53339aa4d03426a59df390eca7cad7b594ab565c7049fb58fe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:25:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:25:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:25:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:25:23 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:25:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:25:23 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:26:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:26:27 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:26:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:26:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:28 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f035cfbf63db8881bcfdf40c8e0b143e373befb3311a73c36e860defea4225`  
		Last Modified: Tue, 14 Jul 2026 02:26:49 GMT  
		Size: 145.9 MB (145906288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f502ccd38cb0682957e0c3af1b591eee19a68a726f9410e0f46c718e55b57d`  
		Last Modified: Tue, 14 Jul 2026 02:26:46 GMT  
		Size: 20.1 MB (20119092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80307696fe13d0bb8b6c63deb7d1e1ca4d87c9510820fcef5f22669142054e7e`  
		Last Modified: Tue, 14 Jul 2026 02:26:46 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9845ce0a45fffb5308414432d688de6053af58e5e0efe03629784b20dea5a5a5`  
		Last Modified: Tue, 14 Jul 2026 02:26:45 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:50faeef06f44175f1c5755cd5928fa03c7049822f8025033f7f197750eb118ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4301792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d012902b5ce953c4c0b3ebdfbf5988fcdc2f63bebc827b9c4356c5b3f082148a`

```dockerfile
```

-	Layers:
	-	`sha256:65e2924e9fc400b7ef969752f77e4b73675c6807bbf48c84cee1ff5321a21ebf`  
		Last Modified: Tue, 14 Jul 2026 02:26:46 GMT  
		Size: 4.3 MB (4284054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fd682e24f1727e8e04c2806f63cbd5c788a647fad03414c33cdf53a5aa733f9`  
		Last Modified: Tue, 14 Jul 2026 02:26:45 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ba63ac3df4fbd1e8c69b522e7a904051b18cb3ee9c294aca4e7385b4ce3a4be9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.6 MB (217574417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bf106bf06965e5cde21bc63ca84976131b91e6e7b372f8d119a1790671387aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:25:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:25:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:25:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:25:16 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:25:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:25:16 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:26:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:26:23 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:26:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:26:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15013b40379417786ca64e8c1dfa2dd8746a809f2805410ab769ba7c0f58df0`  
		Last Modified: Tue, 14 Jul 2026 02:26:45 GMT  
		Size: 144.7 MB (144724295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6612aea482624322109a815e06264e6685cc6fb422cbb077e5cd76e2c54754`  
		Last Modified: Tue, 14 Jul 2026 02:26:42 GMT  
		Size: 20.0 MB (19950812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a530b2b1ad7f7fb8bf57af4379cc1aa77e9fa97b0552a9cfa0be8e5a46a95e5f`  
		Last Modified: Tue, 14 Jul 2026 02:26:42 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac6570210b07a63d0709adaf9fe6ac53ec4651856fc1c9dbb9e43ab9aeb4ff61`  
		Last Modified: Tue, 14 Jul 2026 02:26:41 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2271412c4aaa293890cfc8f0ecb7a179c08c04cb49f2595b688fa7aefc228136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4301527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df26ea63ec3fefe9c5b9733a6da1cd88eb573a09c8bdce4c85e48c4692a6028`

```dockerfile
```

-	Layers:
	-	`sha256:29f814fe187caab142c0dd04b9d30ed0ebf83c0f89282c5040a103a9d01b5e45`  
		Last Modified: Tue, 14 Jul 2026 02:26:42 GMT  
		Size: 4.3 MB (4283669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6eed44141d87d94e223de6c1813db7856da97fdbf3e1a7b6c05cacafc5556fb`  
		Last Modified: Tue, 14 Jul 2026 02:26:41 GMT  
		Size: 17.9 KB (17858 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:1b26fdc2544bbb9c833c63dee87d25a30984c60127453568411f822d414ebd95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.0 MB (222955513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2024bf3cd8dac28ea9aafd2a80aa439c19de9c25e3960add0a5bb5d95d45c177`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:21:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:21:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:21:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:21:53 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 08:21:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 08:21:54 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:24:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 08:24:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 08:24:48 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 08:24:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 08:24:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:24:51 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:24:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2e25ff25be1eddeb1ba9b54263149b269f8a03b6d5309bcd84972d7662b9a4`  
		Last Modified: Tue, 14 Jul 2026 08:25:39 GMT  
		Size: 145.8 MB (145766183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4dbd42a8c066e3328f839d6312471c2dbef6b12cbd6ba8b094fa8dc4c539d59`  
		Last Modified: Tue, 14 Jul 2026 08:25:36 GMT  
		Size: 20.3 MB (20331862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d2b275191b5b364ab0267670d8acf5fd33582a8bc18c8a2e72b7f8afb02ce5f`  
		Last Modified: Tue, 14 Jul 2026 08:25:35 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6ee2e1659d29033081e1f5af968264c6e919f410dd1e997fb1f0a2e0527a86`  
		Last Modified: Tue, 14 Jul 2026 08:25:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:06b972226bbb526ff856d2f9304a37621eb7ac62c9ffbd17292a785d78efd4af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e9b82ff1c585632035003d39d172f2ce58dc2fe5af80bf18a38b1cd8e8ea76`

```dockerfile
```

-	Layers:
	-	`sha256:cd5b2b20fff79f8364b74b4b2b6321d77eee970f229076630f1ce69005ec513c`  
		Last Modified: Tue, 14 Jul 2026 08:25:35 GMT  
		Size: 4.3 MB (4285915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a774e6aa5a1d11617330292a4294ab237df6329314049d55940cd7af6dda06b7`  
		Last Modified: Tue, 14 Jul 2026 08:25:35 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:8f06e22dfa3b863a3a0568cd44c2a301f22c3657260cc2ad3d3c029f9cb5a42b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207353622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:977c195a4add9afa7065c8a14f490db91272b1eabd3453bb68ecf3259063e136`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:27:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:27:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:27:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:27:46 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:27:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:27:46 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:28:56 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:28:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:28:56 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:28:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:28:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:28:58 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:28:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89f4c3517bae7a83d6736bfcea8ad580214d6be0e6bbee8191980dcb73dbb73`  
		Last Modified: Tue, 14 Jul 2026 04:29:24 GMT  
		Size: 135.9 MB (135910433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56a9607bc046c3ceed03710f7f7524ac2025f079735d4264ce05794bd3094b89`  
		Last Modified: Tue, 14 Jul 2026 04:29:21 GMT  
		Size: 19.8 MB (19770276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5898a3ad8d1b29e6283127af0f5548ecc83b20af0c26da8751ace6a5e5c7ebb6`  
		Last Modified: Tue, 14 Jul 2026 04:29:21 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7299784a8a3aed354086945330745e5b44beb5e5d0d2371ef7ad14baea7e6ef`  
		Last Modified: Tue, 14 Jul 2026 04:29:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b2ea03ad4a13472c44530eff419528893a05e98a3d9881f9d73e4f8d10d8d72f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4293606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6c7ca9b63de51e3dc9d35d964198c5dd9f499e8b073f231132517c5e23a2d6`

```dockerfile
```

-	Layers:
	-	`sha256:045cfe07c410fd1516e3409ab5da210ac397be5af66b00a756ab38ea7135fd5b`  
		Last Modified: Tue, 14 Jul 2026 04:29:21 GMT  
		Size: 4.3 MB (4275868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0bc465c8cc934b43a8c0f44e04effe6f908cc4c3948b261ba04e62f5efc84347`  
		Last Modified: Tue, 14 Jul 2026 04:29:21 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json
