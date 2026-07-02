## `clojure:temurin-11-lein-bullseye`

```console
$ docker pull clojure@sha256:59518ff973b0a274ec0fa9ff21f818184ae73669cce04df7478bfbd12f069f3e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:e06592d5f160062e4b04ff577e736ff408822e28aaf4194ab73a4a1fd0d726cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221114347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ad0d0e1abe7eb8316d859c308bcaeced87d2c32119b1075d83caa8ae2adf5fc`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:48:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:48:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:48:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:48:06 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:48:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:48:06 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:49:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:49:11 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:49:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:49:12 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c67cddb4b9fcdeefaf829aa012f0ccaefcfa862a558064326104b95b8849cd81`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 53.8 MB (53773009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f700298ba3429ce580b75b7de331ae31b01f67599b0c134ceebea201603f9e`  
		Last Modified: Thu, 02 Jul 2026 05:49:32 GMT  
		Size: 145.9 MB (145886155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca0a1b434a0d874a5991f9c49ca160061392ce7fd099e41524281fd4657d37d1`  
		Last Modified: Thu, 02 Jul 2026 05:49:29 GMT  
		Size: 16.9 MB (16939940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9d63ae7301c4f2e4ecb734acaf2f361e60f02a6eadd758e3b4433ebb0bce2f`  
		Last Modified: Thu, 02 Jul 2026 05:49:28 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:d34a2db578d3fd361cf21e00ccaae1f8ca60c538c6a533f7f41b72cc75eb52e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4536291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d43f45c35fcecb79a17c7da1d48a315c2a929dad19583d46e884ca47af7884`

```dockerfile
```

-	Layers:
	-	`sha256:644d439e01f83e6c210fd1f350c47724cb75afda7354b1cd72e9ec9d6d700b83`  
		Last Modified: Thu, 02 Jul 2026 05:49:28 GMT  
		Size: 4.5 MB (4520543 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7e3b8938c14873b713ebae94e62e25fe34e8f472d187da7c2c47ddbc3ea857c`  
		Last Modified: Thu, 02 Jul 2026 05:49:28 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:85a2090009e6ac30ad6a0f123c631f81c3eaa0a96cd8e984194c524378d26a64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216272557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7bf6f9dd531fddf0251cbdba6d0b2da627b287aadd8551189530585032ed96b`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:48:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:48:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:48:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:48:24 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:48:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:48:24 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:31 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:49:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:49:31 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:49:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:49:33 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1d54e24c4b3d843a3659e4027dae8c80c988b188a6cbe8f398b86920a13a01`  
		Last Modified: Thu, 02 Jul 2026 05:49:55 GMT  
		Size: 142.6 MB (142582195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17c29ffb7db58e5ffed5b315241eef295336188763d7f2e2ac2050fc015cfc8`  
		Last Modified: Thu, 02 Jul 2026 05:49:52 GMT  
		Size: 16.9 MB (16917903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9e010c85933413daf84a06f2f83db4a2664c8202137464c5e3a6f926bd712be`  
		Last Modified: Thu, 02 Jul 2026 05:49:51 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:e40715f35de98b94bcc5ed2646b567a915f3abeb02b1d9a4157d1db01e8a1aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4536002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3226d690373516db5425a91a89823409d28785f96983a40c64dc8a54b275023`

```dockerfile
```

-	Layers:
	-	`sha256:13c11580848e962e4d871d58812999ea83e04b3e2e155b7cfec7563c3c608938`  
		Last Modified: Thu, 02 Jul 2026 05:49:51 GMT  
		Size: 4.5 MB (4520135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acd241d5148eaedc357b666e4e5e1fa32653b96d16f52628744176c99aaeb71c`  
		Last Modified: Thu, 02 Jul 2026 05:49:51 GMT  
		Size: 15.9 KB (15867 bytes)  
		MIME: application/vnd.in-toto+json
