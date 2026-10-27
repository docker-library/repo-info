## `clojure:temurin-11-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:939d18d63c8fe9265f85f86f842c61165ac17a0b5983700accfef689e880dde7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:369e9ed08aabe2b9d18b5ee1674a4d96e6fcf58578d00d109997109128829bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196700103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0267415c38a4c3269eb36e34f1d81cc8014e9d85de8398a7bd26f0bc303cbd6a`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:46:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:46:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:46:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:46:34 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:46:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:46:34 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:47:45 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:47:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:47:45 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:47:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:47:46 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9375cef4bc98891d991360045aad3ac322a4005171ff6715fc1ccfe36ee987`  
		Last Modified: Tue, 27 Oct 2026 00:48:06 GMT  
		Size: 145.9 MB (145864282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda99b64ed92f4caf64e5c4d8229b45445e2378fc4cfd6306c7bfe5e2dcd564a`  
		Last Modified: Tue, 27 Oct 2026 00:48:03 GMT  
		Size: 18.1 MB (18072641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a391a9edef57b45e61ffc0e83894432491ca6727059de20a3318e0549ae9f5`  
		Last Modified: Tue, 27 Oct 2026 00:48:03 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:95061302ab8fb238bffa6f4d83ae6daf3c6f2222c86d11e751c0e8722af8d938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e4e0517de646769103b16576dc722c29cae749b9c66069db7ee49280c670ae`

```dockerfile
```

-	Layers:
	-	`sha256:7d1631ca77336c57ef73c54be89658754d0a849e482b6886ab40cbc8d2e80423`  
		Last Modified: Tue, 27 Oct 2026 00:48:03 GMT  
		Size: 2.8 MB (2755839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ec79f79497c85a67a06a7e9b3d6ed96963d62d5be107dbdc56cd40ca1b5f87d`  
		Last Modified: Tue, 27 Oct 2026 00:48:03 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:250019d772f4105a7e85e6be4e3dffe8b916aef667805f0ff0111c2655d92ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193146548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a5d41e296dbdcb9c88335c5cf31b86ad8693d7c2b1e2cf986dba1694503932c`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:46:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:46:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:46:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:46:23 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:46:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:46:23 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:47:34 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:47:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:47:34 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:47:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:47:36 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcccffbdd1b4cab16b8e7cee1f9273ba0997d7e0289cd642c9c6608cb44c74a`  
		Last Modified: Tue, 27 Oct 2026 00:47:56 GMT  
		Size: 142.6 MB (142576557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9637dbc3dd5b24c1609689d4d605f7da6caed377174b258526c1410e4775d76b`  
		Last Modified: Tue, 27 Oct 2026 00:47:54 GMT  
		Size: 17.9 MB (17916315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c901ea21f3ffe5abeae340b01ac9ac210f2ff44a4741da7fbc68b32112075b`  
		Last Modified: Tue, 27 Oct 2026 00:47:53 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f8031ad1efb7c4db6c352f2999e78a0ca8f2f3cacb529dbf11a70511b2279928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22049a15cf5a275b1dff2533d0239d6a57941139f3bed82a2868798734dc5c44`

```dockerfile
```

-	Layers:
	-	`sha256:b20eebbe10649a9d78feae8693b581ea07750d2bf184e3ec58f7a1dbfac950e9`  
		Last Modified: Tue, 27 Oct 2026 00:47:53 GMT  
		Size: 2.8 MB (2756072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0958af6ae3930611ba04862a8bb7c4c328cf111fdb71a5edf87e3094c3a51445`  
		Last Modified: Tue, 27 Oct 2026 00:47:53 GMT  
		Size: 15.9 KB (15898 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:4d61c3cf78472da195eeedffdce60cbc3815438f604cf133752e6944c2520e12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187983262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a120a8c23ee900b082c88dff2e9a31e783141c9cb6a34393dccfa2926b6bd836`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 09:58:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:58:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:58:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:58:44 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 09:58:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 09:58:44 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:03:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:03:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:03:07 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:03:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:03:13 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb086e599d6565b3e77279e7b178001d0b1cb12c5fc3e049b1c486611b18ac61`  
		Last Modified: Wed, 21 Oct 2026 10:04:02 GMT  
		Size: 133.1 MB (133095148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccae2799fdcbea24baf659da3d3ab49cb9910c85eb6299acfe62f53ad0df7bd`  
		Last Modified: Wed, 21 Oct 2026 10:03:59 GMT  
		Size: 18.3 MB (18279649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d25e7a24274b9759683dd7609bf2c093495a58f6df4f99f10def5b030ba4feac`  
		Last Modified: Wed, 21 Oct 2026 10:03:58 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:54aaface373a90e8fc5f0a2e8d1eb86eca9960f12192fd1dc561a65e68622eed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2772877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80d3c4b9ad562a661971ba530d9d88bb8b0ae0d03fd2edec72d125cb8ed26f2`

```dockerfile
```

-	Layers:
	-	`sha256:50215682454c41287dd3a89791514ca14799825e8946fbd5fd5ffd2d76fb4c48`  
		Last Modified: Wed, 21 Oct 2026 10:03:58 GMT  
		Size: 2.8 MB (2757057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:550706198f3a7e577f298edc263c55b1665dca0ff2b143296e88d0af01895336`  
		Last Modified: Wed, 21 Oct 2026 10:03:58 GMT  
		Size: 15.8 KB (15820 bytes)  
		MIME: application/vnd.in-toto+json
