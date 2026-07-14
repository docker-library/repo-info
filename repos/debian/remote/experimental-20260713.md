## `debian:experimental-20260713`

```console
$ docker pull debian@sha256:ab922ddf5a1bf30a6d378933ab71adbecaecdbd7f5c33c8f79d44db94ef56d73
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `debian:experimental-20260713` - linux; amd64

```console
$ docker pull debian@sha256:6cdd7dd7144d3d7fed4081a03091fb647e949d5637acf023ed30c0f16cdcf651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48864259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61bda49c179894128278eb000ceb72f6213d788037a33f416b2f3e3fd300c0e0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'unstable' '@1783900800'
# Tue, 14 Jul 2026 01:15:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:774781d3ea9ac54e392dac75cd90f60140d6f3f85c2c7b29784b9bf7ff4a8835`  
		Last Modified: Tue, 14 Jul 2026 00:15:03 GMT  
		Size: 48.9 MB (48864040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71235b42070fb3a14ecdb774a25196d7ab352922f29d357936e4ea6824adca33`  
		Last Modified: Tue, 14 Jul 2026 01:15:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20260713` - unknown; unknown

```console
$ docker pull debian@sha256:2612ccde8017ebef4135b09aeb09f7e0f8ca245102da4610ac3750949d454a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3154811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a3afa7fb63d97377b5d939c544f9e5f63f3966c742685bff3db7a08c8ae27c`

```dockerfile
```

-	Layers:
	-	`sha256:cc81b33ea9cda72c9abeed0461326c63ad6a918b5637204e7cf5f860585199cd`  
		Last Modified: Tue, 14 Jul 2026 01:15:45 GMT  
		Size: 3.1 MB (3148711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1144c3a427a1f16000d679d2e4be8400e5b42d1d66dd1f3058e9328bf6713b9`  
		Last Modified: Tue, 14 Jul 2026 01:15:45 GMT  
		Size: 6.1 KB (6100 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20260713` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:d06eb725fa7489976db2f8a6a5bdefa28e3a66c1b4aa12d7e3d48722ab39ad99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48880548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:892a18f3c3b1cc08ea4fff83c26cabdd62a194c4035270d70d8341cdb515f3a3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'unstable' '@1783900800'
# Tue, 14 Jul 2026 01:15:25 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:e51b2b897ad68363e2853aba81fbe79bf0454cc8ad656578f6eee6ce4bc63d56`  
		Last Modified: Tue, 14 Jul 2026 00:14:44 GMT  
		Size: 48.9 MB (48880328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63ff3e359019553fed74cbe066ce9c07e22f0f7908c5b398b7cfc1cc558fba1`  
		Last Modified: Tue, 14 Jul 2026 01:15:31 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20260713` - unknown; unknown

```console
$ docker pull debian@sha256:58ca0768f007a4578dabab162b77f81701d0083a1e37a7151ec9067de01a6d57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3159574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b6e633265600d06662b9f614ab52e6addf6efcd6505445ecdeeac6583f6f1e`

```dockerfile
```

-	Layers:
	-	`sha256:ac14af1296aee6d6a8928782211967c583a6ad0ea3ea318b25e3982313b12c55`  
		Last Modified: Tue, 14 Jul 2026 01:15:32 GMT  
		Size: 3.2 MB (3153393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69c20f5ba861b42c2bbd68e51b5d2b74a8bf0fcbfe3d02fe8ba3a2fa28d16d64`  
		Last Modified: Tue, 14 Jul 2026 01:15:31 GMT  
		Size: 6.2 KB (6181 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20260713` - linux; 386

```console
$ docker pull debian@sha256:9681def482cfee05b3299bfd02c57cbb901f188f46135800710a2ba2915a6d20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50191428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9135064665ec9c8af45296f79498ae48b8408dced26c521571d3cc2f8db8433b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'unstable' '@1783900800'
# Tue, 14 Jul 2026 01:15:39 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:44148581291598d9a4b17ef965074987e146964236cacb8898ad9a16e322fae9`  
		Last Modified: Tue, 14 Jul 2026 00:14:53 GMT  
		Size: 50.2 MB (50191207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:536d1195be104fb48276ed916a56995e3faa2458ba133ea6c3afdce4aa9643d4`  
		Last Modified: Tue, 14 Jul 2026 01:15:45 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20260713` - unknown; unknown

```console
$ docker pull debian@sha256:1a9b52777da2de9e159af1b034588663827e7a183d11148e731fefa10a23fa2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3151992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a2a19fda1685451c4e8481aa42bfd8a53483653bd723f07eeadce487252327`

```dockerfile
```

-	Layers:
	-	`sha256:1109bf417bbe8971e053b80ededf2b77e6cef25f79838f9676d12ffd18621848`  
		Last Modified: Tue, 14 Jul 2026 01:15:46 GMT  
		Size: 3.1 MB (3145913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:848641eb49e23cb457b085491375a467b097b15d9049b301a29db1b14ad62459`  
		Last Modified: Tue, 14 Jul 2026 01:15:45 GMT  
		Size: 6.1 KB (6079 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20260713` - linux; riscv64

```console
$ docker pull debian@sha256:abc1257abdd935ab8556ca1ab0571c0b5a766f2cbb65e8d3c601633e2f207dfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46977083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23099364e7a8964b8d784d722ce6efa869931fe99dd1ec556e52f81ffd207b38`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'unstable' '@1783900800'
# Tue, 14 Jul 2026 01:22:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:f13c84c39d04faa8fc3460813970bdb4296c07afd7f437e15940c8c3cd5db64b`  
		Last Modified: Tue, 14 Jul 2026 00:32:14 GMT  
		Size: 47.0 MB (46976865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ce305ce074ecc9627459194a46669361667a95ec313be2ee297dde3268eb8e`  
		Last Modified: Tue, 14 Jul 2026 01:23:30 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20260713` - unknown; unknown

```console
$ docker pull debian@sha256:6cc1bfc94f21bb9a7e2011aea360645ae02dfaba52a12f4c0762be46db87b1f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3147159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840fafe66e61bb6913ef2403b172d1fc89a16e257beb5caf0155653e7a1e5d67`

```dockerfile
```

-	Layers:
	-	`sha256:2b31ee49158ba462aa6ccf1ddc5f816d92cba148d7ab1f360eec4e46d12d9250`  
		Last Modified: Tue, 14 Jul 2026 01:23:31 GMT  
		Size: 3.1 MB (3141026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5909634f096a0f89fcb817953916964f8e4d2173ce4480cfd4f150db3f94876c`  
		Last Modified: Tue, 14 Jul 2026 01:23:30 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json
