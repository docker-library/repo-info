## `clojure:temurin-11-lein-trixie`

```console
$ docker pull clojure@sha256:6fac9116a8124320f914f3c6e200e6518a33616cbd3e86460d182f1ed56bdeb0
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

### `clojure:temurin-11-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:b3d3ad919aae5fbf522481442db2214d244d547c41037e454ff14580c5cad8e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218595239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189de90191e517d90898c35c46c030df6a276e115474a07aebd7a84079d90d71`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:26:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:26:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:26:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:26:08 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:26:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:26:08 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:27:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:27:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:27:24 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:27:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:27:25 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0b02342b0277d07b1de50d1b00015a96f0c56ae7c1ac84d1a0a0399a5fa4dd`  
		Last Modified: Tue, 25 Aug 2026 01:27:45 GMT  
		Size: 145.9 MB (145861368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d216e848bd70d5cb605d548192329b4828463a84817d2ada09e5bd43bb4ae5`  
		Last Modified: Tue, 25 Aug 2026 01:27:42 GMT  
		Size: 18.9 MB (18880793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:425084f42ab6827a856bb2aadc7718c0851a4109dfd140644d673301b1420696`  
		Last Modified: Tue, 25 Aug 2026 01:27:42 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:33b3b4bffd72225dd984a44bdbcb05e05f79f4078509ee17c40e1e0d8d0d62f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3858082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46f3728946ea84a5feb42ea300627ced45b17d417a93253bbe05d7440676943`

```dockerfile
```

-	Layers:
	-	`sha256:d1996ea8d4280552058e95ac9c9da54cc380ae8964c86a77fa34351dc49c786d`  
		Last Modified: Tue, 25 Aug 2026 01:27:42 GMT  
		Size: 3.8 MB (3842348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a3724635d52914c74b7f5d6474b13b585f46105c41809d518369fbf6440fd52`  
		Last Modified: Tue, 25 Aug 2026 01:27:42 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7bb4539bba44066583491bde3a01799c74143b9850eb14a65c43ae11091f29f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215626303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054ae993a2f7d77147b1184c56fc8ee9ccb961aee00c87fec89fc97cdb6f7694`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:30:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:30:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:30:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:30:23 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:30:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:30:23 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:31:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:31:42 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:31:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:31:44 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6a846fad42890ff4bf3fd1faca8ccae34935b7958244f0147fe844d7312c8b2`  
		Last Modified: Tue, 25 Aug 2026 01:32:04 GMT  
		Size: 142.6 MB (142566585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:987a94fcca5fcc6157e542bd63798b45beb3ce926d9683fd18b32859480f9ad7`  
		Last Modified: Tue, 25 Aug 2026 01:32:02 GMT  
		Size: 18.8 MB (18839600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55eba10bd8639d45aeaa23bff7789dc05c75d68c248082ef52bdc0c1202d33d6`  
		Last Modified: Tue, 25 Aug 2026 01:32:01 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dae0dbadf5e1f6b5c479f8217610cddd592c8d58d52ee078308ae36a5e0d611a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3859061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ef51d02a38e2e06bd8885e9e1b81a8fdb2646e93d1ec0d4fd3c91c1d8b7aec`

```dockerfile
```

-	Layers:
	-	`sha256:b5153f09a43e5f32d51904a1c82317c505b8e85ec04741e606a19175e244ba4f`  
		Last Modified: Tue, 25 Aug 2026 01:32:01 GMT  
		Size: 3.8 MB (3843206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28d016d78bf6675b94b3786268e7aa63a4941aa9626be16cab33e1eaaa1cc08f`  
		Last Modified: Tue, 25 Aug 2026 01:32:01 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:4260922bd3c6edddac90bbf5836f6d2423437dfee3b0b4300049a92d7b5acb68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.7 MB (209706350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cce823c2ce3781dd948d82a8e92051efcc7e718afd35706ed2aad273a390eed`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:08:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:08:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:08:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:08:49 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 08:08:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 08:08:50 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:12:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 08:12:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 08:12:24 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 08:12:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 08:12:27 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a26f7aa3a43d4f8490541a93cee064575aa2365612d762d90d135fe37ed3781`  
		Last Modified: Tue, 25 Aug 2026 08:13:16 GMT  
		Size: 133.1 MB (133089920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62c18c316ad0db241ed265d4e23c65e4e59f725327f4c0a5653edca6fb520ff`  
		Last Modified: Tue, 25 Aug 2026 08:13:13 GMT  
		Size: 18.9 MB (18936911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2f8b9f03ecf0b4988ed8c66b0aa257fc754cd9aecd0c9b3e8a44e86283fb1a`  
		Last Modified: Tue, 25 Aug 2026 08:13:12 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:19736f0577a27da6bcc50edd82adb9b61774630c1ee5d4dcd64acc27aea8c05f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3858511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1cf96b827af3cab2faa1268d488ed96d6432abd76b53622fd8db420696a6a1b`

```dockerfile
```

-	Layers:
	-	`sha256:99c125513cc14a0d17d72ac534aad5cc699f65f553b38b13173991f6896e446e`  
		Last Modified: Tue, 25 Aug 2026 08:13:12 GMT  
		Size: 3.8 MB (3842733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce390b5e2a253fe37e581e85e28e31a32039f01460ce8bb2e68509269210fdc4`  
		Last Modified: Tue, 25 Aug 2026 08:13:12 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:b5bb06e7ab17c9094ca8e4830c1481b1be120face6f3d317d85bd08bb998621a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.5 MB (199485419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8015e99026c0ca42858c8255f209f60d3a9800a74d6c14fefeeb53352dced473`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:04:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:04:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:04:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:04:57 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 02:04:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 02:04:57 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:06:17 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 02:06:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 02:06:17 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 02:06:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 02:06:19 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aab5b07b410b0b3b90f92be9682888fefcf8d363f922d59f4dab458ccafbd2e`  
		Last Modified: Tue, 25 Aug 2026 02:06:46 GMT  
		Size: 126.6 MB (126641461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a6a22d4d96564463c8196025f285fcc98c2caaf9d9d81b425b97d80f41b084`  
		Last Modified: Tue, 25 Aug 2026 02:06:42 GMT  
		Size: 18.9 MB (18922048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06458b3ef8b5c593ad69c53d138816b397a3f1afbdc8b9a0bf3042a9ec2497d0`  
		Last Modified: Tue, 25 Aug 2026 02:06:42 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3d5c3555e060700ab205be1ee4172da9f26483479aebcba794d1ec1149b1871a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3854513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d3e113ac25450b983273e77a4c64bb73b85e463a262207d245b953f0dfbbab`

```dockerfile
```

-	Layers:
	-	`sha256:967419d3e8c1224a802b55832ac8f79db8cfd9626bcb4f65f6b0094e2ec8b326`  
		Last Modified: Tue, 25 Aug 2026 02:06:42 GMT  
		Size: 3.8 MB (3838779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6eea34b8ef9a3404a56095ce3bb01bcb4750bfaae1bc7ffa8ae9347cfa6a81f`  
		Last Modified: Tue, 25 Aug 2026 02:06:42 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json
