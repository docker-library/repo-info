## `clojure:temurin-11-lein-trixie`

```console
$ docker pull clojure@sha256:cf2b0823442ae802c70819bf895f702e0b7171d9bd9a59ef927e72f88b14fd38
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:f8cd6b07164201836d2524f52316fca4f9f0c81261b2af48c844dd777bc61145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.6 MB (221639831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b26de514b9afb477a0a7e47812cc8c9fdb1d7b4b9fdf1caf235e88294e4b72`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:43:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:43:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:43:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:43:39 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:43:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:43:39 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:44:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:44:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:44:58 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:45:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:45:00 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702bd6ed4876ad9bc22e194ecf628aca30532dd0a0fad53b61a28a423d3de5e8`  
		Last Modified: Fri, 02 Oct 2026 02:45:21 GMT  
		Size: 145.9 MB (145864193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83140a8df73073e4e72e55782a6b08a2a19bc8d7a2bac624a41fbb819395c51f`  
		Last Modified: Fri, 02 Oct 2026 02:45:18 GMT  
		Size: 21.9 MB (21880713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44631c26a23d4ff90d174603714d1711fc819b453c9acf7d16c0420720248ab`  
		Last Modified: Fri, 02 Oct 2026 02:45:18 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4d2a52ab950d937638a0ff67cb7ad1d90872f8e69e974b57423b1a636213bce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cec8028c5dd243de502b5e461f3fdf62eabbed1ad238768785acb992dbe8542`

```dockerfile
```

-	Layers:
	-	`sha256:36140ea06b777d1e286565da8a0c37de20174b47893e26d195461aa38a9e3231`  
		Last Modified: Fri, 02 Oct 2026 02:45:17 GMT  
		Size: 3.8 MB (3847263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11e545f138919d58e429ca26688b4625c5cc6447dad9e0f9c48877f2320f37fb`  
		Last Modified: Fri, 02 Oct 2026 02:45:17 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:80378e16ee193f601998cecc539fc9798490a907423cdba60ce5dad1af62c750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219043164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b98a05007f193160baae62b030e80381894e5b3028ccb845af75aa2b7a20fb0`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:43:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:43:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:43:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:43:32 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:43:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:43:32 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:44:53 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:44:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:44:53 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:44:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:44:55 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:834759166ea2d094b5da584e725a19af5612b1fb805e639e4434a447c99daa6a`  
		Last Modified: Fri, 02 Oct 2026 02:45:11 GMT  
		Size: 142.6 MB (142576526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a084f5491842d1f6bfa922b3267d0340969fa6da6544420b289792178630b2`  
		Last Modified: Fri, 02 Oct 2026 02:45:14 GMT  
		Size: 22.2 MB (22202556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4a7113e0c65e913a1aebee7ea3997c2b9cd60e3d103f7d4046a43a26f7b074`  
		Last Modified: Fri, 02 Oct 2026 02:45:13 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ab58adc7f70e993fead77e6f766254f51a01a59c08f8f19fac04f7dfd9376a4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3863976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b1607684e88f93487d3aaf89a55f743abc2e4175bb551f7ba3024cd7c786d4b`

```dockerfile
```

-	Layers:
	-	`sha256:a556a106ec5ada90e1a8e90fa7f5c1a79b9e956c60a15fb3babbd7aa509d55c1`  
		Last Modified: Fri, 02 Oct 2026 02:45:13 GMT  
		Size: 3.8 MB (3848121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00b6524a43bafd1d6252f4158d9e2a59d974718c942c85a20ca3fd727eff77ca`  
		Last Modified: Fri, 02 Oct 2026 02:45:13 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:1c4355cd75a7737e23814bfdc6847c3eddc0eb4acd8d563a40684221f37fa958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.7 MB (209746654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8479df59a5a06011f1190709ebaeac5996bac4b80b86161e41638d22d7562cdf`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 04:07:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:07:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:07:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:07:21 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 04:07:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 04:07:21 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:09:53 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 04:09:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 04:09:53 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 04:09:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 04:09:56 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e7bdb001f2692102de3bf07b1d0bfd3f3f2dc0d2d1f77f247c12fec14e307f`  
		Last Modified: Sat, 26 Sep 2026 04:10:33 GMT  
		Size: 133.1 MB (133094700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4766ec79358bbfd155363e18ff4f0dab02d520690d1497c7ca76e8213289fc`  
		Last Modified: Sat, 26 Sep 2026 04:10:30 GMT  
		Size: 18.9 MB (18941639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a946b488ce2e36f87453725397aead5db45c41b529111b563a6a6bd90b65f100`  
		Last Modified: Sat, 26 Sep 2026 04:10:30 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:94c58f3272f2fac8682bef0f71aeeeef9228a5ee80f8e55f9541ced936487ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3863424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1f9de5c2bd7550e64d219a4768f0b72587d02a67d9dd149ae592787930438c`

```dockerfile
```

-	Layers:
	-	`sha256:d3456f99adcf9f93af11ba3a7519e435a338aa63c73fdddf8f104ce7f75173d0`  
		Last Modified: Sat, 26 Sep 2026 04:10:29 GMT  
		Size: 3.8 MB (3847646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f1b7e6f72578c73ba0d14e2bb2c1bd11f7f4f043b86ad3c34bf4441176bcbe0`  
		Last Modified: Sat, 26 Sep 2026 04:10:29 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json
