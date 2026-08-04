## `clojure:temurin-11-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:e13ac2eed23c1ff619b533cdbc2a03825b7afb20add74585bdc3d1c938868b36
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

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:32c66df691a2ea3d5671fceaf46a872a030530321d9feed88e8b65af6c1a8f42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196936986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4a9c59d144a221c005c820ab427f7dc861f1658573e501f5fc802906ef421ea`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:48:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:48:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:48:07 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:49:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:49:18 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:49:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:49:20 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff85020b8149bb6390484906d49530058d67823f9e3d96b866ce9cb9d85dbb26`  
		Last Modified: Tue, 04 Aug 2026 02:49:38 GMT  
		Size: 145.9 MB (145886357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa9f9180c04749a5373a27fa7bb9777989a16a7da12b11331c92afdf865a1f8`  
		Last Modified: Tue, 04 Aug 2026 02:49:36 GMT  
		Size: 16.8 MB (16754484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f9f793555c65d6cca64de9f5c3e3c5e7d854e74aabf7f4c39e9c8b35a1377b`  
		Last Modified: Tue, 04 Aug 2026 02:49:35 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:613ef85b2ff65e8c5fccfd039897b567c47b0984d9ffa73b2443563c76f05407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04eecb67c902867810e3cba82480af37faa8c3825a965e8202c19b50f280c2da`

```dockerfile
```

-	Layers:
	-	`sha256:f7fd223eb8c65a1f6227d0f4353225bda22193a64d937cb698a5f2f2d3aabffb`  
		Last Modified: Tue, 04 Aug 2026 02:49:35 GMT  
		Size: 2.4 MB (2386633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37e0830aaa699fb245dca27770c103e4dcbeb6d1b6bea5bd5be22628ca3559c5`  
		Last Modified: Tue, 04 Aug 2026 02:49:35 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:725fa9b4e3fe244b56cced49de24fa67c51245f8e6b6222884ace9dc5795eecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (193952973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9041f7f0ffa1c80f9442bc86f8473885ed15128f58d87103c1db0e0c06764ead`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:48:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:09 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:48:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:48:09 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:27 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:49:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:49:27 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:49:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:49:29 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1a26164c8f99a4f0a558af84e262a07b814dbfe6a0f72314d4c2560e7e14f3`  
		Last Modified: Tue, 04 Aug 2026 02:49:49 GMT  
		Size: 142.6 MB (142582304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f386ae1ee586d9c11acb12216971d4d62b6fa520f6e6a93fbe7f1ae9f1a66002`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 16.7 MB (16711716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0be5ac1ca2ea6901731d92d4a8d634e884d6a033af44e38c062597f9481d7fa`  
		Last Modified: Tue, 04 Aug 2026 02:49:45 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:13ccb66ed680aba43253a249f78941e128628560946f75402c5c033354b93ee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d937ccb0b8c466c19bf55b9443b5369c8d9d96ef732f9f21d03916548198252d`

```dockerfile
```

-	Layers:
	-	`sha256:ecc89ba51dafdf195d193e1998a4a53e90e297f1b3e803d4e35622de60bcd855`  
		Last Modified: Tue, 04 Aug 2026 02:49:45 GMT  
		Size: 2.4 MB (2386861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a516c35c68fdb3bcfeb047c5b166c67a5dcb300c773146575bab23538eaabac5`  
		Last Modified: Tue, 04 Aug 2026 02:49:45 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a3421148364feeeb752a81c58b669ac694bed7b10ed2e9b118e2e955cb222ab4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188008715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84360c86607e3fa54ce64d815af5f7dd89314b707898c31f019313f97ed8a998`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 04:58:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:58:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:58:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:58:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 04:58:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 04:58:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:01:33 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 05:01:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 05:01:33 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 05:01:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 05:01:36 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93730265af21325f754e83e8547865c3c756bd4c967fa218e90a090a099b51be`  
		Last Modified: Tue, 04 Aug 2026 05:02:10 GMT  
		Size: 133.1 MB (133109682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aefcc171dd6f039909acd513441fe1fa9a1b8bf141645a3ab638c7ed040fb08`  
		Last Modified: Tue, 04 Aug 2026 05:02:07 GMT  
		Size: 16.8 MB (16782287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f9a53517a3411ae581a43418f46003fa993640863adf3ce3174afaba7c496c`  
		Last Modified: Tue, 04 Aug 2026 05:02:07 GMT  
		Size: 4.5 MB (4515236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:281baa23756ed040f90bcab86edf9b8ff3a319716daa4ab58ce089ba7514006e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91246e54b7a5d55490f9ea4d7be453ebc5ecdc02a4e39a25963ec6d23388e970`

```dockerfile
```

-	Layers:
	-	`sha256:1998a5248a4d178bba3933f99dede6d20244482bb8b286ef21cf455471895c09`  
		Last Modified: Tue, 04 Aug 2026 05:02:07 GMT  
		Size: 2.4 MB (2386998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ac4edef60fed6e609526e4ccb7471f808756c28eb86f5c701315232b5c2cd09`  
		Last Modified: Tue, 04 Aug 2026 05:02:06 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:da71e70179005fd022754ce366e272bd527aeb5b0224977c0e488abfed7ce619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177793995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbf21bff10f6edbd07db1d72cfc12e32f2a94b17a2b0992ac860ce413f8a19cc`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:50:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:50:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:50:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:50:15 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:50:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:50:15 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:47 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:51:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:51:47 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:51:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:51:48 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73629417056681a3f1d0d70034e895694dd8530140c9a99539efcfc2ecf6423d`  
		Last Modified: Tue, 04 Aug 2026 02:52:14 GMT  
		Size: 126.7 MB (126652393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84a2ba3698a152c771b340f79e8154d7ac93918206025343ae5b51a2fd1db32`  
		Last Modified: Tue, 04 Aug 2026 02:52:12 GMT  
		Size: 16.8 MB (16779744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78bcdd04c8ac04c935b15fca2410c61607255531e09d2e8835130fa4c166221c`  
		Last Modified: Tue, 04 Aug 2026 02:52:12 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b3741c5a736904cbf9750d5cb15219913d7fc75d06f6c2e833b675c87e4e0e06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa26d5a83e089d737888d9a49e9ed8afaedd36c949dfc404edd336281ec5c6de`

```dockerfile
```

-	Layers:
	-	`sha256:d927c89e32aed2d1eef04e1c94d7de70ca736cc8c5c0c8dbd17b8b82686d0e0c`  
		Last Modified: Tue, 04 Aug 2026 02:52:12 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f4f2674f5328bef7e8450faead66e6aab55fd421e2bdbd47052531e0a955058`  
		Last Modified: Tue, 04 Aug 2026 02:52:11 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json
