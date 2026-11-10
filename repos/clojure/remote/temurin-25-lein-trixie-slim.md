## `clojure:temurin-25-lein-trixie-slim`

```console
$ docker pull clojure@sha256:b12eceaf7979023cf9dcdea44afa24b2fd465dffd8764669186345b8123e618b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7c33ad5a159f72ca576c8746cf6449d3d0fa0556fc77afd668346ad0db143658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143712780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f03bf9993af2911ee56cb6c0106b81979f11461c4c9023cc4b25a671c6074322`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:42:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:42:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:42:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:42:21 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:42:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:42:21 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:43:34 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:43:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:43:34 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:43:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:43:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:43:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:43:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ea8a0bf0af23f42f0c5582b4dde952a0cd4e3ae701f194c357605ab8a07f77`  
		Last Modified: Tue, 10 Nov 2026 00:43:52 GMT  
		Size: 92.6 MB (92598940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26636a8ab8822255d2092fc31768d88dc1a75ddc5b458cbe0f192b3288584e66`  
		Last Modified: Tue, 10 Nov 2026 00:43:50 GMT  
		Size: 16.7 MB (16741584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e36c26826218d379166c768aecbb993810c9f4cc02fbb349faf0d18ece0b16`  
		Last Modified: Tue, 10 Nov 2026 00:43:50 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625d626e1898084d68e7b59691f694bd6436d8ddd216101f1095038069013df8`  
		Last Modified: Tue, 10 Nov 2026 00:43:49 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:39e8bf93786aa35e182da71f62064d5decd4ba6f45fe59e09ab2772d692e3b9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2358196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa96b6a89161ab24f07dbe1778c4e015327fb55bb71771d04be480f671bc2b41`

```dockerfile
```

-	Layers:
	-	`sha256:76207471833427b8b88655e5cf1f2c1898fcc0ee85179e883fee78eeaaca4986`  
		Last Modified: Tue, 10 Nov 2026 00:43:49 GMT  
		Size: 2.3 MB (2339796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cccf8ce0ab793899cb6b69e6178e310d64f9e3df1ba38c15ee5539d5eb6b9d25`  
		Last Modified: Tue, 10 Nov 2026 00:43:49 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:58b5bfa264dc9794913816f4c9d7d69b97db63e4c8e507f2d26562a52ffcc850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142963440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9976bc19b52d388fd0ea68ac50d0976590cb8ae5e618da2794fa3efbefa4a70`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:41:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:41:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:41:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:41:39 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:41:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:41:39 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:42:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:42:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:42:55 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:42:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:42:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:42:56 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:42:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99774cbc70a58015f0fc781d368977cf78cb513750ddba0fcc9bd1ded3d03e42`  
		Last Modified: Tue, 10 Nov 2026 00:43:14 GMT  
		Size: 91.5 MB (91525601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e76fd7af6408a8fd140d901872649d8c934b5f0ed6f2f8bfcf63fb9e844bdc9c`  
		Last Modified: Tue, 10 Nov 2026 00:43:13 GMT  
		Size: 16.7 MB (16707686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030c0d6b6a82ec481d3d4cae8cb4fe77a29a76c8fa295f5c15d896ca7768fe75`  
		Last Modified: Tue, 10 Nov 2026 00:43:12 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aedbfb5782aecd1d45884d44fc26d771b29622ce659b9ed7e4789338c0d75d3`  
		Last Modified: Tue, 10 Nov 2026 00:43:12 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ae31ddf3ad16ef5bb4c7c09be0b6997cca22234fa81d0a93c504bc5518b32c15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdd30585afe6355d4cd39dff22c4d409f19ec3204e34ccdc754f9a9684807492`

```dockerfile
```

-	Layers:
	-	`sha256:a153dc60e4c224377f5c426a1987d2dc8c9958b09f836b31ac008fc2506cbb4b`  
		Last Modified: Tue, 10 Nov 2026 00:43:12 GMT  
		Size: 2.3 MB (2339427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a8287c849151ad80c7f4e8b2950a853da8aaedc9943f38592b0c0cbdb6da5f3`  
		Last Modified: Tue, 10 Nov 2026 00:43:12 GMT  
		Size: 18.5 KB (18545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a807abcadf6e81980c281b8d099134744a35f11ffbaa79edac1c1bd440de201d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.1 MB (145074102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f566586924916df16d26765287e7f92c4303e67b6713e44e7779056b21bd1c55`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 16:07:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:07:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:07:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:07:44 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 16:07:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 16:07:44 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:11:01 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 16:11:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 16:11:01 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 16:11:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:46:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:46:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:46:01 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16eb107ad4aab0d839191f5d20438fae2bc20bed304c2176a95bc563270b24d6`  
		Last Modified: Thu, 05 Nov 2026 16:11:42 GMT  
		Size: 90.1 MB (90111671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a0530b942ddf14a1d8f0ff0c4450a10a9a3e4b5b1ded40754c518c0097ca84`  
		Last Modified: Thu, 05 Nov 2026 16:11:41 GMT  
		Size: 16.8 MB (16778640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56be9c7048bf171b828b4401105a5451a19e8a972ad29deaed4ae62ef807949a`  
		Last Modified: Thu, 05 Nov 2026 16:11:40 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be0f5a2c010124829f1b75e8b1569294057592d7e11aa2329d19c0077358864`  
		Last Modified: Tue, 10 Nov 2026 02:46:16 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:024b7f7c38da3aebcebbaee417b9a4599f098227a9645c398963defbb53ac032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2340695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9663d1a6dabab90b6bddfadf6a79a6a21101b55cb4df0960e9c62aa0c4aaa41e`

```dockerfile
```

-	Layers:
	-	`sha256:050f403622502dd8cd554b0256424f53e7db3373dc9cb1bdb2426548e309a580`  
		Last Modified: Tue, 10 Nov 2026 02:46:16 GMT  
		Size: 2.3 MB (2322239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1780ae8655147d567232e92ea912405ef0ba7649a732d9063bf869f3e2f9585`  
		Last Modified: Tue, 10 Nov 2026 02:46:16 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json
