## `clojure:temurin-11-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:930b03c23be6e95454b9e7c0cab14835180735fd4430ae802a8ddcd2a0ac4ecf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:6319b195c0e53224a686066e1a24dbe66e25cf8f0dd4cbb24d20f584b1c79efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196305062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08288e77aeef86627922f38d394b440b9bf7d90dafa52ef849037fd5acbabc54`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:18:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:18:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:18:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:18:38 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:18:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:18:38 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:19:45 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:19:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:19:45 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:19:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:19:47 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee6429c54cfbd6c7cc360ea3ab462dd0d5d5ee4aff58d541fd83a8372a1bbac`  
		Last Modified: Wed, 05 Aug 2026 01:20:05 GMT  
		Size: 145.9 MB (145886314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57a7f479cf395dd123a6c2ef4a19b0160588c5dd012b1bf37ef099f0cf8b10c`  
		Last Modified: Wed, 05 Aug 2026 01:20:03 GMT  
		Size: 15.6 MB (15643897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298bd8fcada8e4620d297e3748015cb771f4d6ffa37ff9cb43e84582c50324ea`  
		Last Modified: Wed, 05 Aug 2026 01:20:02 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a2c18a2cd4d8c61561274be64b9f1dcc98519e7cb5964fffba6628251dbd09e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3072406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51ea9cb30f6fd78eff6227779427a0127662d81cf7c1ebce1130f9686ada3cf8`

```dockerfile
```

-	Layers:
	-	`sha256:53082c5440f926a629b82a8c3d6d23244f0de0e6be221a233439ddd7413463d3`  
		Last Modified: Wed, 05 Aug 2026 01:20:02 GMT  
		Size: 3.1 MB (3056628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21496f52d39573a05657dc7feddaae405e574dfad394f9f335b442545566835d`  
		Last Modified: Wed, 05 Aug 2026 01:20:02 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ac8c4e19ae3395b533ef280b1ce43a373dda916fd6ed1f45a6ebaba299cab2d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191466205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be67549cdf43fb1901cbdb486d4cacf29a939e452c5a3e9b33196ca17fa4c15c`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:25:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:00 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:25:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:25:00 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:09 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:26:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:26:09 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:26:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:26:11 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03e346ec391db90931608500ab56ac135cedb9834cb2080bc2b75ec227181e2`  
		Last Modified: Wed, 05 Aug 2026 01:26:30 GMT  
		Size: 142.6 MB (142582297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51bb9dc165853e1c088516c6d958efab218badb19f5bb06d2493c02d7b51cdf4`  
		Last Modified: Wed, 05 Aug 2026 01:26:27 GMT  
		Size: 15.6 MB (15619762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddfe25661ecf3af47c96f30bfc782ad1324fbfce013827f3badd98e21d4dee4`  
		Last Modified: Wed, 05 Aug 2026 01:26:27 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:46cd6d12df8460303f28d4a6be5455cd5ab5a382a16a8542820515f43aaeb690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3072754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830cf6c7758a9bbb05ee4335da45274cf927a2d4ccb0cd4ab07741a4a09321d1`

```dockerfile
```

-	Layers:
	-	`sha256:fd5737211a2faa9608eaf75d4f9f84cb34609549cd997c86684e2c806e43aa21`  
		Last Modified: Wed, 05 Aug 2026 01:26:27 GMT  
		Size: 3.1 MB (3056855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ad05d2f9805686d7219e734c1ba1aa057d5de87d578015188794041542274de`  
		Last Modified: Wed, 05 Aug 2026 01:26:27 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json
