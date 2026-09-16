## `clojure:temurin-21-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:7edbe725ba114a8b966b61817ed46928b30ba604e1a6ca5398b7fa9c75100111
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:640e95f93c8fa6b2a54b0f4b9e20698a488ed81b6b9877b87a7fa47e376ef4de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208954202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc1a2353f83c967445b593c850b4a5d5ff5b3e06762d4319d8250ddfe08adf9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:35:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:35:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:35:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:35:12 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:35:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:35:12 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:36:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:36:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:36:18 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:36:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:36:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:36:19 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:36:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ba5ff5c6bc4c970f85c837c44410bb423b3cf8e20ad025389e523c9c43d132`  
		Last Modified: Wed, 16 Sep 2026 04:36:39 GMT  
		Size: 158.1 MB (158120306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff56f67d2e7e7028c8adc9b46b1bd4d5483c76d2fee495789d054d5d39d6d30`  
		Last Modified: Wed, 16 Sep 2026 04:36:36 GMT  
		Size: 18.1 MB (18085612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac5a358b31fff89f84b9f31f7bcc8c4ca4b97e97c7e8cd13b3718be93aa3952`  
		Last Modified: Wed, 16 Sep 2026 04:36:35 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85867d90d86cb94b6c0dc0771e6809986e34265785572779b54deaf65aa260c4`  
		Last Modified: Wed, 16 Sep 2026 04:36:35 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:528906d6dbfad4d437cddb3dd13ed4b96214305ef72a6e311f4504996677f81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3da2c1741eaa92622bb6b121e19886f34a310b9200751975f7dbe25b7f8a8b5`

```dockerfile
```

-	Layers:
	-	`sha256:f7bf93717024220cc5fada345a940bbe4bdb7b9c7ff6856f70ab09eb6468cc56`  
		Last Modified: Wed, 16 Sep 2026 04:36:35 GMT  
		Size: 2.7 MB (2739426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b12e5b6749df0c49ef417be53461ab8d6390bc6c0726c001afd3338142d82769`  
		Last Modified: Wed, 16 Sep 2026 04:36:35 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ee4530a4d4f18d9832b9024c36a3548f69fe44549a19ea1e245acb035d7a3061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.9 MB (206942154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:064466b94614b45061787f5db30088e424fc24249918a6b9325dd831e13b770e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:35:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:35:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:35:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:35:34 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:35:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:35:34 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:36:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:36:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:36:43 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:36:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:36:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:36:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:36:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13103128f7df05e189875ee3dad262132e91833e7d0963dd4e1b474762b8b4e5`  
		Last Modified: Wed, 16 Sep 2026 04:37:07 GMT  
		Size: 156.4 MB (156401954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a32c45d1c074668befccb3f924e20823abc9ea83e26ff8c03d1f1cbc7c442b6`  
		Last Modified: Wed, 16 Sep 2026 04:37:04 GMT  
		Size: 17.9 MB (17907299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdefddcf08cacaf748a53870d7031820f69cf311e0cac813f349d76426b71131`  
		Last Modified: Wed, 16 Sep 2026 04:37:03 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cf662f40a198332061511139bc1bf16c63a5a001b03bddc23ed0b1349305b29`  
		Last Modified: Wed, 16 Sep 2026 04:37:03 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:030bbb7e942e142431e49dd78d3463d62b4346ecb77c86d087750a6f9431a5ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d533af4c6d1570990ae08f9bf89aeaf02c38d4a4dbcce73b04e4c82375ddcb1a`

```dockerfile
```

-	Layers:
	-	`sha256:ccc7820dfc4f2562b48eaf5bd395659702bb5b0fc2d945d43a21b3513d5853e5`  
		Last Modified: Wed, 16 Sep 2026 04:37:03 GMT  
		Size: 2.7 MB (2739041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7791c03c6d386624cd90dde24e92b9b3a89426979b3358ea1229bbcdb471df3c`  
		Last Modified: Wed, 16 Sep 2026 04:37:03 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:aef943e520b3e3fcba353535870d93d5516001a154758c56e39d0e43c1e9c6e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213146089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a796b62d06e4d2901a42e374ac53704c9049d2f60a6c0df9a85ac9c2c50c2b31`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:20:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:20:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:20:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:20:34 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:20:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:20:34 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:05:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:05:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:05:08 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:05:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:05:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:05:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:05:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d866b20eba167def1cd6e612f1d7dd17ba8fe02043e41bcb160cbb8bc3c90ab6`  
		Last Modified: Fri, 04 Sep 2026 00:22:09 GMT  
		Size: 158.3 MB (158274917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b73216dc27f92e9c6960b76113be43eefdc12da996ee7ad3d03d34b072b741`  
		Last Modified: Wed, 09 Sep 2026 11:05:50 GMT  
		Size: 18.3 MB (18279073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89390ed0cdde7c2734488f91bbefd3f42d8de3354d1123ad1637a2eee2b63a34`  
		Last Modified: Wed, 09 Sep 2026 11:05:50 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae0653f868d429278821359ee196126f38cd324b7fae4eedee100c1bc971e53e`  
		Last Modified: Wed, 09 Sep 2026 11:05:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1717f4e19ad4a6d3d712d817b471401d762cf00e43d8749c38140b1b63856c26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd0e49b460e2759aeb85c73066fed7a4e361ae8e204d55ab548ff33e861a2904`

```dockerfile
```

-	Layers:
	-	`sha256:d1b1d34153d4c674b1813ee9bf04d1d598141e691c645c8ff58175e5c858bf3f`  
		Last Modified: Wed, 09 Sep 2026 11:05:50 GMT  
		Size: 2.7 MB (2741259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f592af24d701c0cac7950316ed436adfd097ae26bc125eeb053d7e107fd025b7`  
		Last Modified: Wed, 09 Sep 2026 11:05:49 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
