## `clojure:temurin-27-lein-trixie-slim`

```console
$ docker pull clojure@sha256:a3f5618b87d9290dd2608edd6a765c409b3b24e624763e8ff4c12b7279728a53
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c008d39af23a8b1d73965b86430f9311a4c0c60f36e9cf1dc73bfab858e9e706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144748758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e00b297a0398269869b4c7fb79e3d0527fdd0f5a6624331959edd7380e43163`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:13:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:13:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:13:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:13:41 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:13:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:13:41 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:14:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:14:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:14:55 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:14:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:14:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:14:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:14:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2400d8f957439eab7e769a6e5897435fe51d6e38012d5367415d71559fe7ee`  
		Last Modified: Tue, 24 Nov 2026 05:15:15 GMT  
		Size: 93.6 MB (93649658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1d06357264c15d3db9beb49a04f4c7b1656bc5115c843197fdaa65d887f5ed`  
		Last Modified: Tue, 24 Nov 2026 05:15:13 GMT  
		Size: 16.7 MB (16740768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693b0e31923696ff03b71aef5835d7d7174a6f3b3ac35209548a63ede8a53dbb`  
		Last Modified: Tue, 24 Nov 2026 05:15:12 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28dd5bc7ea921d86c9a7e5e399113b83ae78a8fe94bc546816a46527d63cc16c`  
		Last Modified: Tue, 24 Nov 2026 05:15:12 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b5cdd709b955c11f03f283df16f90e046f31ded98fd32ea7895999c0407bbc86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d9d157d4be1233ea8645bd1295a628e45b7869e959dfef6bd7c213ce138972`

```dockerfile
```

-	Layers:
	-	`sha256:8338a4fb93dca834de3eb79d40bf111a2d3750eeae2e02b4f30afca9742d7668`  
		Last Modified: Tue, 24 Nov 2026 05:15:12 GMT  
		Size: 2.3 MB (2335428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6db4c713230005762edb734720890c32d0e08a6e03c13cf4f9cd8d5b32753c6`  
		Last Modified: Tue, 24 Nov 2026 05:15:12 GMT  
		Size: 18.3 KB (18342 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1d27c8a01c200db30b893568168d444b5ce72464e876d77575cb8068985fc378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144098785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13de1bcac95b4fdd915bad8300271bf2a33f74d0078d93c2c66dd8a471a581fc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:08:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:08:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:08:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:08:02 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:08:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:08:02 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:09:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:09:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:09:21 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:09:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:09:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:09:23 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:09:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab5cf37c25e913233ccdc55444cd0d91515947a5136238374febff83d218213`  
		Last Modified: Thu, 12 Nov 2026 01:09:42 GMT  
		Size: 92.7 MB (92660462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b32f53ba3b615d67a4134c4e6d6d9b62058bcb16bf1cf34ba8873589df0e7de`  
		Last Modified: Thu, 12 Nov 2026 01:09:40 GMT  
		Size: 16.7 MB (16708148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8431d7f3c4716e7c30e8c9ee8ad7c62bdb25aa87fe5e57ec31913f5663a74458`  
		Last Modified: Thu, 12 Nov 2026 01:09:40 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb85cdcbcc180edf47576cafd8d2c19e4403e0522089a44fc3e48d3b60f0773`  
		Last Modified: Thu, 12 Nov 2026 01:09:40 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6cfd0866f7df1303dc88ef5e0140ed008c9b61ec186161f1eec3af374d413018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2352882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e602b34e52b8d1efa18736b2da47371e97d724a08b397d49a1e741ac09f1a2ad`

```dockerfile
```

-	Layers:
	-	`sha256:81c682a033105d0a36a59ad13b147676cfb7add4eef8543d5ab70aad71759228`  
		Last Modified: Thu, 12 Nov 2026 01:09:40 GMT  
		Size: 2.3 MB (2335015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def058f740f25d220d87bbd194ed5b807ce9a44f2064fdc04e3cda0388e63ea9`  
		Last Modified: Thu, 12 Nov 2026 01:09:39 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:aec586112f22ae92617ae01a75c85c6553cf88fa88f2e3fed24c9661cf9a9248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146881793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83cd6f687ba5783fee03e3317a4e43ae2d1047c084ae233e6a0e22ac2a88c564`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 13:13:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 13:13:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 13:13:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 13:13:04 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 13:13:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 13:13:05 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 13:16:58 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 13:16:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 13:16:58 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 13:17:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 13:17:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 13:17:04 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 13:17:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77460f63ffbbd60e78ebf62aee6406d52151994424c0d5fca464d8ef76632862`  
		Last Modified: Tue, 24 Nov 2026 13:17:56 GMT  
		Size: 91.9 MB (91933318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b86d24e56c684b040fffd0b7bb4c0286bd3cbf70c8257ef1c4dd562c9630e4`  
		Last Modified: Tue, 24 Nov 2026 13:17:54 GMT  
		Size: 16.8 MB (16779687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835b8cd46c477dbab2a1466a399bfad03c82fbb667768e739839c5dd46a98465`  
		Last Modified: Tue, 24 Nov 2026 13:17:53 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae89186aef880d3697fc822d15071677c4314ff051120effda71a1428435f3c6`  
		Last Modified: Tue, 24 Nov 2026 13:17:53 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f23a0810cddd2e80ac0c9136b87a420fb9db2850be12baa89dda52bd9abbb423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2336869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a63749bf8fa4c5a57fd10dcf00d42960ad29d8895c2ded8a6fc5c9602cffd9df`

```dockerfile
```

-	Layers:
	-	`sha256:fb81622dee3dd76a59088228ff0747e7f1550241cac38968b5d9d5e2060387ec`  
		Last Modified: Tue, 24 Nov 2026 13:17:53 GMT  
		Size: 2.3 MB (2318483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec1994db8d2a0e8405c1fff50a341f98d01f33b18bcd73c30bfff99cfa1b6896`  
		Last Modified: Tue, 24 Nov 2026 13:17:53 GMT  
		Size: 18.4 KB (18386 bytes)  
		MIME: application/vnd.in-toto+json
