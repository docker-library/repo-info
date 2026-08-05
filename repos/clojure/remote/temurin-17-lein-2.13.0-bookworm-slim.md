## `clojure:temurin-17-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:724509e7f1d1893fc94db457ce1df4f9c07d592443f6e550b1b7f200f58dbe94
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

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3f908b21a4a33cb53747f376c0eb5b729a33b60d7591f756d53f39ef612da473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196725326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559320f23e62082cd82eb488651b78028c6f8e00323119919aaa62829f11b62c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:20:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:20:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:19 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:20:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:20:19 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:21:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:21:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:21:26 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:21:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:21:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:21:27 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:21:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:510cb978605a6826fb71c18582a7e2a214feded7a3e93626ce2baf973891d268`  
		Last Modified: Wed, 05 Aug 2026 01:21:46 GMT  
		Size: 145.9 MB (145905428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449937f657f710f728f4e622324bb1989141dbab144415ad69a8ec195e59eb9c`  
		Last Modified: Wed, 05 Aug 2026 01:21:43 GMT  
		Size: 18.1 MB (18071680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551779b8ae178ceeadb1d8761ce74e39f0a9cfd31dd3da0139692f793a645e7f`  
		Last Modified: Wed, 05 Aug 2026 01:21:43 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a331a196fb906d384ba1ad6a2caf13c3af1e67d99bbc2cc98ae3c1e50d4bf68d`  
		Last Modified: Wed, 05 Aug 2026 01:21:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fee32c77f503bbf77afe6ab348503798023026b70ca3fefa1cde011ea187cce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2750146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1557d44f7c1907cce20ed47d3ebdf33e2d1dbf9c80c30d66c1db99573749f96`

```dockerfile
```

-	Layers:
	-	`sha256:d6877f13d1b6dd02fb35f3c0733198192c48cd44244b78ba09ec2b90a3a04a8b`  
		Last Modified: Wed, 05 Aug 2026 01:21:43 GMT  
		Size: 2.7 MB (2732373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:640ee9ff22758506acccad110c724ff4b153c735a4ea2dfca96a561892559a90`  
		Last Modified: Wed, 05 Aug 2026 01:21:42 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5c4d1f2a7019109d81606cb6c74c76635fc4dc107562573bac7976653ecd8f98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195251336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69678499a867e6bdd0730ecffb5e0a0ed8a9584c5870956f1d272f57ad16cbc7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:26:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:26:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:26:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:26:36 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:26:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:26:36 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:27:47 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:27:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:27:47 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:27:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:27:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:27:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:27:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4768887395fee64b59de029e57bc617213110d9e0d158b658c8a525f5901d1f`  
		Last Modified: Wed, 05 Aug 2026 01:28:09 GMT  
		Size: 144.7 MB (144724300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4c5b01121960f5afa5708b03e81407fe262d3dd0861bb104777ff3ee7a2b45`  
		Last Modified: Wed, 05 Aug 2026 01:28:06 GMT  
		Size: 17.9 MB (17894212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c2823bf4969e82253777de7bd174970d34c5d47a5eca7ce8fa72a549bbb9802`  
		Last Modified: Wed, 05 Aug 2026 01:28:06 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a56f12afe02ceba72363c7159161d605e29279e7b65d3ac8ea9d5c1bd1e25bc8`  
		Last Modified: Wed, 05 Aug 2026 01:28:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d7870425574112ce0379270144c95cd8ab4892259bdce1c8aebd412e8fa95774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2749882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9ce4fc4067680fa10e7b474cf49832cba82ef8b4279db47705237f194231903`

```dockerfile
```

-	Layers:
	-	`sha256:6574ebca1e136a1025d5954d148245617dc9afa2dd2370177278e55d13285ae5`  
		Last Modified: Wed, 05 Aug 2026 01:28:05 GMT  
		Size: 2.7 MB (2731988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ee2cd09d44686408e245b4a3f07db43f20cfd7890935c37d7b7790aa5b0c681`  
		Last Modified: Wed, 05 Aug 2026 01:28:05 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0f5726c187a89e028383c323d0d4d0cb5d1373cfe736f319d6057d738f816285
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200621575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3160ed73e8f5f7f3de5060d0e92f267db19c3c145fd2d7287d42956692e96d1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:29:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:29:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:29:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:29:59 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 03:29:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 03:29:59 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:32:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 03:32:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 03:32:31 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 03:32:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 03:32:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:32:35 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:32:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bf9b001c3c03526ee978c85cbf44ef2b90b2685e4627dc3481258c9eb34d3c3`  
		Last Modified: Wed, 05 Aug 2026 03:33:16 GMT  
		Size: 145.8 MB (145766102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb468e2b9196887aab25b200509f85aa81263ef8f42007484ac50b07d2232ab1`  
		Last Modified: Wed, 05 Aug 2026 03:33:13 GMT  
		Size: 18.3 MB (18263521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a04f1a5750c3bc086c88a7610a08c41daa27f20fd68a8b8a0c7197fc9b2ff7c1`  
		Last Modified: Wed, 05 Aug 2026 03:33:13 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea3c2ec0025522fa67890c9a5f7cf0f8eb9526df4d62ea333660c7167087e09`  
		Last Modified: Wed, 05 Aug 2026 03:33:12 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9d7eabf20c5459460a38996c063f7eced30d15b1abc6c322b2f9c4c79ec5e53a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2752022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a263ed97e52bc7cb2ed31fad3120ea3b38f8efc482dda9be260adbc4e032de3`

```dockerfile
```

-	Layers:
	-	`sha256:1e8e3d6a83ed00350b7ad25081c6cedef002f8bae6a36ccb3f66a87dd03f3d25`  
		Last Modified: Wed, 05 Aug 2026 03:33:12 GMT  
		Size: 2.7 MB (2734206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01acaf0ee1f2d1c9a5821687c8709c9a945f7ce7ef76d702c4cf6c878391c6e0`  
		Last Modified: Wed, 05 Aug 2026 03:33:12 GMT  
		Size: 17.8 KB (17816 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:08af117e3d7bcf135df8197d4d0f422db793aa06054294968e8a242cc8144416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (185039296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3954b1d17fbf097b76d5210fa48cd72274cc4f4d8d1fc1bb24f9825c31acab49`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:53:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:05 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:53:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:53:05 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:05 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:54:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:54:05 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:54:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:54:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e46e08b0e9e2fd3652f14029d08d559c0a676987ea34e3d6e74c4479d7b98a2b`  
		Last Modified: Tue, 04 Aug 2026 02:54:33 GMT  
		Size: 135.9 MB (135910428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b6e69352a2d623816db9ac94d1e9a4f605044ee4b4250bd27748a71a89cb89`  
		Last Modified: Tue, 04 Aug 2026 02:54:30 GMT  
		Size: 17.7 MB (17724979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4114264c298dc540f8c891ee043d524f0c0174d6d9c2692f93df85b06aa0324`  
		Last Modified: Tue, 04 Aug 2026 02:54:30 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b4bfb9303db53ec0df67a99de8d4090a8aec2d4d0ab88fac3f849d5029f892`  
		Last Modified: Tue, 04 Aug 2026 02:54:30 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3028854a13e93fdf1973a3b70ed7d41097a4a3fa746c3755b65e96c6235d948d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2741960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3877432518c6f397398afc1809de925b15751f9f53bbe1e041f2e8cf3c323a02`

```dockerfile
```

-	Layers:
	-	`sha256:61b908b9a575f985da1acdddac2d28808d3e838ebf3b59437275d30fefe37eeb`  
		Last Modified: Tue, 04 Aug 2026 02:54:30 GMT  
		Size: 2.7 MB (2724187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:590d561c4d1479d946dd1fd5acdb9f6dc587597c22a427b1fb7deb312a0ade9f`  
		Last Modified: Tue, 04 Aug 2026 02:54:30 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json
