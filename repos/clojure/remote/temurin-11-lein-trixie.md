## `clojure:temurin-11-lein-trixie`

```console
$ docker pull clojure@sha256:73f5e3424ef1da25cb6c8bf75456bcee19229d4f37e7c0a10deb08126fbdc8bc
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
$ docker pull clojure@sha256:2352941d91ca2d51110d7139884c81b14b741929b1985f78ddef65e11a3e63f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218609777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d415a187972506cc57157dac645605f5bd7cc2410f77f39edf65ed1e861cc395`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:48:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:48:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:48:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:48:08 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:48:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:48:08 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:49:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:49:24 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:49:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:49:25 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7442e4d0fd1b3ba370c08f27b44c6ade5836e24fdbc36b9250b84372957150`  
		Last Modified: Thu, 02 Jul 2026 05:49:48 GMT  
		Size: 145.9 MB (145886124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83efea0373aa1035230bd20cc181232bad1f4573c7301c269488033e1f62d5ae`  
		Last Modified: Thu, 02 Jul 2026 05:49:45 GMT  
		Size: 18.9 MB (18891192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75078dd1091a3776d445b7071b8a0c17edb12cbba66d6b4e96b28f24c7adb8bb`  
		Last Modified: Thu, 02 Jul 2026 05:49:44 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:924be9d6ffb1a5a12091b8d86838a84a0adf1716e89681fc34531e0715afbbeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3853068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95218b0fc5142a232391d4c95152dcc73f34cbd3f0e65c2751cbbc8c056e03d0`

```dockerfile
```

-	Layers:
	-	`sha256:f4d917d8e7e8abf66e50909e1e238d921da93fd2bbbbdff84df9bd478c588fe1`  
		Last Modified: Thu, 02 Jul 2026 05:49:44 GMT  
		Size: 3.8 MB (3837336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12cc8ee9601a1c2a038c5a7ffc626068796804a614a3c4bebd0391dcd92cd570`  
		Last Modified: Thu, 02 Jul 2026 05:49:44 GMT  
		Size: 15.7 KB (15732 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1517c8fa32173a44fa57effaa2898de0fbc0b5658056fc863e3e2ba97aea26aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215615186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d15e6fda22884427ced8c81c20a8172a02878968340111ac5be49b5656ff18`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:48:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:48:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:48:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:48:33 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:48:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:48:33 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:53 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:49:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:49:53 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:49:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:49:54 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3124f1414e34a0ffb7c54264ad56dcc95939ecf25f4f4f3e1fc46b8efa6169e6`  
		Last Modified: Thu, 02 Jul 2026 05:50:16 GMT  
		Size: 142.6 MB (142582185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b3fc1670a2f8c39c9d127f1c73f64825922d5c186e71152804e424e5425427`  
		Last Modified: Thu, 02 Jul 2026 05:50:13 GMT  
		Size: 18.8 MB (18839394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0af320156ff8b7f3250dcd3ed8022cf32df9de0c77ef4a81f9e32e9b2a4043`  
		Last Modified: Thu, 02 Jul 2026 05:50:12 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0d215efb7ce31e0c0f7e12451622e7b7ebfb7d771c10dd68bce2a8383c71e7d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3854049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c47e00c654c9714934676adfe9755756ebbbce0da4a380109671233cb72e44`

```dockerfile
```

-	Layers:
	-	`sha256:ffabbdc5b3c3f362f06c54bcbe0bf344c8706d5ecbb341e4e42ac09cc6b69b4e`  
		Last Modified: Thu, 02 Jul 2026 05:50:12 GMT  
		Size: 3.8 MB (3838194 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4684b66fd218869490e10176df1c9a155bb3ca8290514a9d1eeab4c118d6b5a`  
		Last Modified: Thu, 02 Jul 2026 05:50:12 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:78ae86997ce09a5356c75eab42c417f12775b39e642c803f05613c83c5e391d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.7 MB (209699883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7dff9ad16af619ddf2dc85e5ef3564b502cf120ef76918d0e410c049d558f4`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 06:56:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:56:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:56:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:56:21 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 06:56:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 06:56:21 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:59:10 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 06:59:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 06:59:10 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 06:59:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 06:59:13 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf789fe3b4a8a893b6dd07ede6f668e14fa6258e18fae274cd2c548fade08806`  
		Last Modified: Thu, 02 Jul 2026 06:59:56 GMT  
		Size: 133.1 MB (133110126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf64f70194907088a404cbaba41764747770cdbfb9749cc9c7a419a050ece14`  
		Last Modified: Thu, 02 Jul 2026 06:59:53 GMT  
		Size: 18.9 MB (18936435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad8955867269ae0f41dd53e76a94b6a90fb418aa64a51f5d0d699fdb9185592`  
		Last Modified: Thu, 02 Jul 2026 06:59:52 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:77a5242c1153f3a7512d827841506ebda7933a6d7aedf9b9f5d2745593a456a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3853498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fac21fa6c4eff667f9baf946712f556cd16a062db2a045839ed365703236d96`

```dockerfile
```

-	Layers:
	-	`sha256:c7efb5b65c11d198ce86034be2c594fc6acdbf48d29df14ae881945fb11a3d34`  
		Last Modified: Thu, 02 Jul 2026 06:59:52 GMT  
		Size: 3.8 MB (3837721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75c15f780ae1b29fc6ec988a4667a63b61c899631e722d7609b2b7fa6465d16b`  
		Last Modified: Thu, 02 Jul 2026 06:59:51 GMT  
		Size: 15.8 KB (15777 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:3691c239f3c8c76e434d729531f4ef09cc4fb6cc968d1ab838fd3160e3ae67f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.5 MB (199474855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63aadc5df08e6de79136c4fc62f9a5b25d14eece3bbe82793e7669815e1eacf0`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:45:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:45:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:45:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:45:36 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:45:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:45:36 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:46:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:46:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:46:58 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:47:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:47:00 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a913fbdd9db0644debf6509cf7d45e7eb7335dff120d8acb6b5e401ada393031`  
		Last Modified: Thu, 02 Jul 2026 05:47:25 GMT  
		Size: 126.7 MB (126651507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2895825a4578e2947f1ac75c18ccc38a4675063724899035eebe22033bdff8b`  
		Last Modified: Thu, 02 Jul 2026 05:47:23 GMT  
		Size: 18.9 MB (18922040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd4cb1016be9684ba2d431868d5621a1e5a5f5184c5c4cddd68b4bb4e226b0a`  
		Last Modified: Thu, 02 Jul 2026 05:47:23 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0a4c73eae60fb9264686e06edcb3632d0e5481cdf9466c593cecfcc0c1a365c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3849501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4af3e5795c4a6f2d8d5c214b06ee86b167dc9ed2dea297998be4b753526d14a`

```dockerfile
```

-	Layers:
	-	`sha256:64bfff7f7ad1dbb928a29a9ffd3ce92bf69aa5b9be323690135cc9eda0e4a80b`  
		Last Modified: Thu, 02 Jul 2026 05:47:23 GMT  
		Size: 3.8 MB (3833767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca599cf0b2ea9eedde09a360b6c685b4bab40a377cdc2dcac35a32da6b0fb1b9`  
		Last Modified: Thu, 02 Jul 2026 05:47:23 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json
