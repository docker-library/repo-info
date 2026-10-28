## `clojure:temurin-11-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:59b6c5d9c9ea939e1a4df90f527ecd816c2fb34b2a8ce8a593c366fc126bef85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:c93170e3f52f5e4650ab825bcc9051dad6307f0c9fe1784ce2fbd330af6b8eaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218673313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467f5f6c36dfad51dc1df2a3f660296e8b88175eb5002c5ebbbf0b8589a4adc0`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:10:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:10:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:10:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:10:50 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:10:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:10:50 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:12:06 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:12:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:12:06 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:12:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:12:08 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49de119b19e132b2baf516eee8b916e9ad0848bfd77f6373e8772a0cfea0dd3b`  
		Last Modified: Wed, 28 Oct 2026 02:12:27 GMT  
		Size: 145.9 MB (145864304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1147424ccd5d8656fb7dc6166f1ee72e6c7e423d5bd078526eaeb796217c0379`  
		Last Modified: Wed, 28 Oct 2026 02:12:24 GMT  
		Size: 18.9 MB (18885865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5cdd356e6a030decfbe707722f13d3d7870a1849bbee8948d42ccc6f7ad811a`  
		Last Modified: Wed, 28 Oct 2026 02:12:24 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:688316e060ec95f5521338221a99a53c62b52cd08fa32d1dd92d1978df669f8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3861719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b886e3aa6048dc23e2dc0b01ffbe6e060f0e1b19cd8d4d2847de74e69969f5`

```dockerfile
```

-	Layers:
	-	`sha256:f7169a8d4f4b4bd32f62c60642e0316412900038189977c7c2adc33f4ec5c9fc`  
		Last Modified: Wed, 28 Oct 2026 02:12:24 GMT  
		Size: 3.8 MB (3845986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3781df071a5134170db3fc659865b2998c03740b65f7403b873cdc2be9f5cdc7`  
		Last Modified: Wed, 28 Oct 2026 02:12:24 GMT  
		Size: 15.7 KB (15733 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:60209245790c48754b06a11954dd53ae3b2906187aa4ec10a9562a9fff93117b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215722370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3926a40c2b9097fe30a7b43b3d1b251cba776bffed65ef76ce245019153e3948`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:16:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:57 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:16:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:16:57 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:18:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:18:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:18:23 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:18:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:18:25 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2f1d3ba12ac7a05bee234c1b5df72533d8dc4fd21b1256f42c4d58f93543da`  
		Last Modified: Wed, 28 Oct 2026 02:18:45 GMT  
		Size: 142.6 MB (142576596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c20fd84fda2a1313f82c0625bd115f9571d155b7b6c075e9624a55001fa272b`  
		Last Modified: Wed, 28 Oct 2026 02:18:43 GMT  
		Size: 18.9 MB (18854362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3589d26acfe97eec74ee0b5cd6bc7810fdd05900fded0be24518f165ed54f0`  
		Last Modified: Wed, 28 Oct 2026 02:18:42 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:cf4fb68d3f1897affbc144ffeafb28c3eb214d9d9e0e935b10f6750b7c802c5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3731a7fb64a1f549a04e5186b23fe7444b2afdd36a213619b7e6792c3ff123`

```dockerfile
```

-	Layers:
	-	`sha256:bfa1c192db363260d7cfb03a2295ea4b3fea51e43f395c7ac78a76cb5f110eb2`  
		Last Modified: Wed, 28 Oct 2026 02:18:42 GMT  
		Size: 3.8 MB (3846844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a391bc2269cbf485aeae588dbfe0daaf81fd7dde4707af339a41d44cd6c7d1b8`  
		Last Modified: Wed, 28 Oct 2026 02:18:42 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:d46531471e55f4a7545ad21cb44ac04f566a98de6fa39120d87f3e0c9051e7d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209772387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb8d54074c3d2bdff10452962a3afcaee8f554ac674c4a036206df487b02a9d`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:38:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:38:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:38:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:38:36 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 09:38:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 09:38:37 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:42:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 09:42:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 09:42:28 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 09:42:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 09:42:36 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fbd85de45b76e6dc5a41ac5124c7ce87ed521e7523ff6d4626251e1c168921`  
		Last Modified: Wed, 28 Oct 2026 09:43:25 GMT  
		Size: 133.1 MB (133095025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee73f1790a1e5b16d20f598de4ba2be5c23db8fdbbe0567fe1a400d16c5346af`  
		Last Modified: Wed, 28 Oct 2026 09:43:22 GMT  
		Size: 18.9 MB (18939858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e54d49f4b289e8961eb1123268ecf78d0820d1e0e79725f6efb7629ff554570`  
		Last Modified: Wed, 28 Oct 2026 09:43:22 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:06b6a9c71a4accc1ad101eea51afd9f9eafeb151af965c4b8699694209338b37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84bf091dc679945ab867ae22f4c45727ec80afab4df149d72a74e66b9c291086`

```dockerfile
```

-	Layers:
	-	`sha256:019c38a45b9a04ab841238ddba7248a0b9d7dacd97f0b373f3cc702c2d2ea97e`  
		Last Modified: Wed, 28 Oct 2026 09:43:21 GMT  
		Size: 3.8 MB (3846369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b4f6fd3b49d9ec9f07b6bed16b90f80deb685a1fcc67d67491d7a56f6ecc93e`  
		Last Modified: Wed, 28 Oct 2026 09:43:21 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json
