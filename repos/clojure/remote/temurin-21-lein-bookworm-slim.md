## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:f8f56716e06f84984db0b9bd077915e2ce34f4006c9b12a9b212855a455d0f86
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

### `clojure:temurin-21-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f2f12adc94345f7255216fd9c0c5b13113a822ef85b9a2b770054d29ef537423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208986900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e407ebfa168e912c56477bc394498625c052d62051330ff284343a18f72bbf33`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:22:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:22:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:22:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:22:09 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:22:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:22:09 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:23:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:23:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:23:15 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:23:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:23:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:23:16 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:23:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcde9c92f71f0a185553d66dca69629091acfb3b349e001637093ccb659e215b`  
		Last Modified: Wed, 05 Aug 2026 01:23:37 GMT  
		Size: 158.2 MB (158166944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470400dc984341707fcee85f872b79394044a71601c2c751d721f38e0f82f4d1`  
		Last Modified: Wed, 05 Aug 2026 01:23:34 GMT  
		Size: 18.1 MB (18071772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06f463835dc24746c99023c09135ef422227c6616710b4a5deac36cb1e9df0fa`  
		Last Modified: Wed, 05 Aug 2026 01:23:33 GMT  
		Size: 4.5 MB (4515165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879be49f6140d28f864ee440a820a29a2c4a2cb3de83402f7dec59252b1a2ae6`  
		Last Modified: Wed, 05 Aug 2026 01:23:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:091d005b3ed5589489663746f549f91aef2b226bde95f8d29d3bde815e28c046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2751998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8628492aadd82da4611a0488870002e9c1ddde2197de3c6c93243a469248172`

```dockerfile
```

-	Layers:
	-	`sha256:323b1adf7d4df8a5d52134c42cc9d41e078deb91fd22d0c5fe8fe7fef2aad452`  
		Last Modified: Wed, 05 Aug 2026 01:23:33 GMT  
		Size: 2.7 MB (2734225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec8f6c55406c3c09cf5a001ebf530bcb649e171cc57397def77ca3a285292604`  
		Last Modified: Wed, 05 Aug 2026 01:23:33 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5e18235eda93f4a8d130a1d380de13520efa30c26196abb30e04ce44f3334cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (206987964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc8085ca97d3183bce148f4b5af16dbfe39a1011fe6e79528887499fadea2102`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:28:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:28:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:28:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:28:07 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:28:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:28:07 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:29:14 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:29:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:29:14 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:29:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:29:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:29:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:29:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e87329cf415cb3d272ec6859358af95cb7250588f9162dccfc517dee09a14147`  
		Last Modified: Wed, 05 Aug 2026 01:29:37 GMT  
		Size: 156.5 MB (156461250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d7679accfa47d0969afcb311343e02c5185be6db0022d13a9e277f04aa7e822`  
		Last Modified: Wed, 05 Aug 2026 01:29:34 GMT  
		Size: 17.9 MB (17893919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693cc9dfb73032e7afef243f19a059553bc9ccf98cd7a5ef256360f6dfbae302`  
		Last Modified: Wed, 05 Aug 2026 01:29:33 GMT  
		Size: 4.5 MB (4515164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b1e3e1c5d37d7ad1b805a2d0a89b1ce5b29878cff0ad9a05be4a482ef2430b`  
		Last Modified: Wed, 05 Aug 2026 01:29:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cb4ee8f4423839e8c99f15c0531574a52724cae7ebf593b1670b7a283cb72d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2751734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e630073578a10f4b13b7c7ebc59c3c4d28347251273b50fa11dad2df860e3f`

```dockerfile
```

-	Layers:
	-	`sha256:c0f65960a588edcffc76b3f602d0235f96ab33dce0a5b2a2e632851e17198e1b`  
		Last Modified: Wed, 05 Aug 2026 01:29:33 GMT  
		Size: 2.7 MB (2733840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:342d54e2cd49a8443817bf95a551eaf10748eca20436853b7f100041bb1cdd03`  
		Last Modified: Wed, 05 Aug 2026 01:29:33 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d1b186d5e0b90588cd63f24d939ae93f6c1a8ab022a5337484967579986999c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213198689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19659b85faf207c11f5f9c77ebf993d85850c5d8b5b9e5be6044a7cff8d46bbf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:35:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:35:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:35:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:35:06 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 03:35:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 03:35:06 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:37:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 03:37:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 03:37:39 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 03:37:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 03:37:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:37:43 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:37:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880b1ecc2fb81f7dcc8222cdf2b7a304459f37f09c831f48f17332832408239c`  
		Last Modified: Wed, 05 Aug 2026 03:38:23 GMT  
		Size: 158.3 MB (158343179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3faea8dfcc222230bdc75408f45e348a9be66ee312aadb38cb938c82b673ac9`  
		Last Modified: Wed, 05 Aug 2026 03:38:19 GMT  
		Size: 18.3 MB (18263541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea3bdf9a9e89313bd717e9b14428208f06ea070694a23c4f4f2a3a725f86501`  
		Last Modified: Wed, 05 Aug 2026 03:38:19 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093352b6e6ae504bc90bfcd317b4a6c447b4b12c3f89018b3d6d512ac317e134`  
		Last Modified: Wed, 05 Aug 2026 03:38:19 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b2783eff51e849165c44908c1d1fbb01b68d2d3f3e79e9032506d8def2d982b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2753875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba834772efb149dc9b0d8274c513d47169caf901e7e92b711b17762624c58905`

```dockerfile
```

-	Layers:
	-	`sha256:d5137e55eb9d470bdd934cdf6f692a91613e3b5510b78cf223892a728cf43f75`  
		Last Modified: Wed, 05 Aug 2026 03:38:19 GMT  
		Size: 2.7 MB (2736058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2100bd8bf3d179f2cdd92396b6419de02d15ad2145940a345b17a7024d4a85c0`  
		Last Modified: Wed, 05 Aug 2026 03:38:19 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:63f4ce0e60dd9b14e625df24001575cabe5bbca58b5c93d500b8e6d8985ea1fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196517097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2ef406dff129cfbbb2a4c0f1bd2acea4279fe86cc1e40de297bdb00e46f213d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:57:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:57:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:57:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:57:24 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:57:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:57:24 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:58:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:58:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:58:31 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:58:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:58:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:58:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:58:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a3f24365b2b7be6a120bb31ebefba7be7e45fc966d4300ec3976b14e69bc0e`  
		Last Modified: Tue, 04 Aug 2026 02:59:01 GMT  
		Size: 147.4 MB (147388360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa196c9e349364d44d77fd6624e5df1cedbd897e1b1dd32a74f778979daa609`  
		Last Modified: Tue, 04 Aug 2026 02:58:59 GMT  
		Size: 17.7 MB (17724812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c145bc2d6aa3dbca4fb244c923227ae4b74f99e05f6c5e5f9dbc93dcf808f913`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f7f7354e1c2f4323b7d535e2e9206a7ca8114b57e953900396f494b667cc74d`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c21219c923ea8686ed6947c2465781bef0bffc57893792bf7ec05c2a8ef4dff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2743812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990b9eebee90f64103ebe257d9c57bf1b4947f11664ee96b594728c39c8ae35f`

```dockerfile
```

-	Layers:
	-	`sha256:fadf4bca84fb2200d6b9cd1275c3d72a17526b6e12d3a4b4929d485813938ea3`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 2.7 MB (2726039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:311fbe1f6991b8f77104a43500ed38a689af5c982d18a12632df0838306d7f46`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json
