## `clojure:temurin-21-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:6219cdcb7c84f132f6936cf955ecd97c008aeb671584b2c8dbdf36c39cbe7aec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; amd64

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

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

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

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

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

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:67185556d41d8a2459c2d4abdfd707911caa93decd471848e5389f6c7f890526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213229424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14c8c8babfc4a143ef48e678b9b4d9dbf5b2305c3029813074f326333f2b2ad`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:39:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:39:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:39:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:39:41 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:39:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:39:42 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:43:57 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:43:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:43:57 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:44:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:44:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:44:03 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:44:03 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2c71451c8a0ab7adac8e6a3f1288ca59d6d2306d4dd9a24899545c84926ac3`  
		Last Modified: Wed, 21 Oct 2026 10:44:56 GMT  
		Size: 158.3 MB (158282665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24fd7147bbea88fc8556c9ee22b9bf9fb0ce46904d9ca0509a01be6724e2fd57`  
		Last Modified: Wed, 21 Oct 2026 10:44:53 GMT  
		Size: 16.8 MB (16779180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c69e6c809807c4212b00ed3d3956c08dfbcd7e91890863e15aa1117d2500072`  
		Last Modified: Wed, 21 Oct 2026 10:44:53 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a63251b60fb5b025779ef17da99edd36597f7218eed9cf984b3a4222e15abf`  
		Last Modified: Wed, 21 Oct 2026 10:44:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4ba0917df0393137197e965dbe499ee1a45c71a40ce88d2aa22e5c33f56d83c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2392381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed6b12f746b3b1aa163814f750454221c2c33bbb4d8bc8f844a994cce97a139`

```dockerfile
```

-	Layers:
	-	`sha256:790309e48ce41c2c7b5b544d42ded0d5141630e80550a3efbdca8297a9e6ed2c`  
		Last Modified: Wed, 21 Oct 2026 10:44:52 GMT  
		Size: 2.4 MB (2374586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:361e8ddc84dcf435ab8e8f49ef26867f199a07ac0799575ece371d9ef83fccd2`  
		Last Modified: Wed, 21 Oct 2026 10:44:52 GMT  
		Size: 17.8 KB (17795 bytes)  
		MIME: application/vnd.in-toto+json
