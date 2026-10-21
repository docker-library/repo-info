## `clojure:temurin-21-lein-trixie-slim`

```console
$ docker pull clojure@sha256:a272deaac6d256ae22e56afabaa76c75bde893b42de24b925ff06f7bc898c77b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:eee26c7923dd7c3b8393d6d111cb7acaa3a3ea4bb6388d92fd63e1068dd476ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209218011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1f54c91f1a0aa65dd8fabf6788eb166ec17a377b2ca1303b3f7ad60677444d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:19:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:19:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:19:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:19:02 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:19:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:19:03 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:20:14 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:20:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:20:14 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:20:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:20:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:20:16 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:20:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e45cf45d128cdd525ee3fc400bed2586135fd82f5d45aedf1fa0c8584b7ad404`  
		Last Modified: Wed, 21 Oct 2026 01:20:36 GMT  
		Size: 158.1 MB (158117493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23120bb1aa1e2c55e9a3377869fc333f213796ae71790684d0145b676165acbb`  
		Last Modified: Wed, 21 Oct 2026 01:20:33 GMT  
		Size: 16.7 MB (16741300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7262bb2ac111152bc4ea0b79935c55162fd1610292252f60a8e8450018bce9f4`  
		Last Modified: Wed, 21 Oct 2026 01:20:33 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed8d068001bcef0bcc66676d67aeb52ee2957342481361b5c60bc8d5eb5073e`  
		Last Modified: Wed, 21 Oct 2026 01:20:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:437638a05f90ba52b47de37bf765a9e2c4e1e6e1fe953ea3d77036adb4efd049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7574cbc0a61b2568479873851cf98cb55de93e5565b707dae99f3042907075d`

```dockerfile
```

-	Layers:
	-	`sha256:8c4b2144d61b9dc8b016accef28cdaa6093ba18bd89c1d111c2f44956378c48e`  
		Last Modified: Wed, 21 Oct 2026 01:20:32 GMT  
		Size: 2.4 MB (2373606 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdca23bbfdee24afcdd52947c1f0eda863ab7f34f388e489e2796d9cbbceaee9`  
		Last Modified: Wed, 21 Oct 2026 01:20:32 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2ad602e559454b05f6a3ead14cda1dada60d46e031cc08cd1b9ef3f555c4da51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207825083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05dae0e58cb0f4a57596198b6bcee5aa16a455a8433d958e41f9fb261ccb689`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:25:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:25:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:25:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:25:05 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:25:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:25:05 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:26:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:26:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:26:25 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:26:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:26:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:26:26 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:26:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d766cb6ba8ca81df980953cacda801e58ac5a70c799b9ee229a08a23ff23d535`  
		Last Modified: Wed, 21 Oct 2026 01:26:47 GMT  
		Size: 156.4 MB (156400655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7adb8f28bdefe1184b477a63eb0b6bf64b0fb98715ca81c50d7d80bd5c1985`  
		Last Modified: Wed, 21 Oct 2026 01:26:44 GMT  
		Size: 16.7 MB (16708343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7183b3deb6b5156bc6d92323237c784a5cafff5fad8369efdfcd437c7a1a5d`  
		Last Modified: Wed, 21 Oct 2026 01:26:44 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576cc8210ba8f368d9ecad9c2a5ceed91bdde766cf0e4e1fec1b920746743563`  
		Last Modified: Wed, 21 Oct 2026 01:26:43 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a875f4b8e9d087cdf785ed874b4cd3d6293c20e198b4caa06c2f6f46bb6ad07f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e14a99511d4d9876cff759bf4832c0badb4a8355efc40864a6c218a74dc6734`

```dockerfile
```

-	Layers:
	-	`sha256:f1c7d64d061aa92ef2049300a159898b8c5649eead6da1cc8d4f805a7cd4b716`  
		Last Modified: Wed, 21 Oct 2026 01:26:44 GMT  
		Size: 2.4 MB (2373216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ce16cc581c53f39715ee989a2f4b2bf761c093847b11a751214deff754a893a`  
		Last Modified: Wed, 21 Oct 2026 01:26:43 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2b946a67fdaa204648b854ac25f5fb71db8948ac93ae212b7a283eb508da5540
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213232873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c95a71bdc53b27ffc1662f291f0f989b9551317288aeea20487c0a1c983a3703`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:03:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:03:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:03:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:03:33 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 06:03:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 06:03:33 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:07:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 06:07:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 06:07:55 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 06:08:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 06:08:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:08:02 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:08:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc8db92c8093631fa89d93420542c74f3e69613279092fa836d43403c3a23fe`  
		Last Modified: Sat, 17 Oct 2026 06:08:53 GMT  
		Size: 158.3 MB (158282682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52bc677ad22efa6c38d9ff8a3adb2ed5babf468986bc1fb06585741b18ae2c0`  
		Last Modified: Sat, 17 Oct 2026 06:08:50 GMT  
		Size: 16.8 MB (16782967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b692e183455143fb8f9a15bc6c38fc9d94481b53d4ad369eccb1d38f5ba30e2`  
		Last Modified: Sat, 17 Oct 2026 06:08:49 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b14b92132ce819856235254d25a70c564ed1474228f4d9d00a48efb4f0f12ab`  
		Last Modified: Sat, 17 Oct 2026 06:08:49 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:69ce8e4b76261eae08d8d0f65a33ca394f83dac9a5cdd627899cbebcf8ed925e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e32b6a5668422d33476a13767ba4d7724e44ee9a50b30e5611cc1a775b4f6b4d`

```dockerfile
```

-	Layers:
	-	`sha256:d69c95e9dc98187f7f1bacee8fd01b593c2012447e5d89274cd6aff3d7efecb5`  
		Last Modified: Sat, 17 Oct 2026 06:08:49 GMT  
		Size: 2.4 MB (2375863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b83823e66f73a9c50bb444ebf32ce18bf137587c14cef7c72e773f8cc645735`  
		Last Modified: Sat, 17 Oct 2026 06:08:49 GMT  
		Size: 17.8 KB (17796 bytes)  
		MIME: application/vnd.in-toto+json
