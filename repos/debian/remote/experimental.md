## `debian:experimental`

```console
$ docker pull debian@sha256:3ab0246e5cf98b9c24ad691ddd5f6dece70f76ee3377a02ed07657533e29c8bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `debian:experimental` - linux; amd64

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

### `debian:experimental` - unknown; unknown

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

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:790876fa2291a412ed99c2495d30179e2530bc750b37c8a0ec5f95fd18a31827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45678857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0c84c3a8f4005b55f3d90e0e3f1a43f87746964d1133eda254a166aea77e97d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'unstable' '@1782172800'
# Wed, 24 Jun 2026 01:15:44 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:9b3921c200941231211cfc04498a1fe1318b746d3cdbdf31ce7b899e85741821`  
		Last Modified: Wed, 24 Jun 2026 00:28:41 GMT  
		Size: 45.7 MB (45678639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea635c345e983ad2e59374f9ef5b34030ee1063a143d38b50f46060c270333b9`  
		Last Modified: Wed, 24 Jun 2026 01:15:50 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:a88c00afeb5787dd618af08996248ca6e9efd7b3c590dd52cb13b59b01629270
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3159201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa351a600687f26bf15a46f86a5cbc1d1d318e64b809509e0353abc5e2df9cc`

```dockerfile
```

-	Layers:
	-	`sha256:6bbaec63fb981eff7bb6b8c85ad6e90b86366ec0c392f20790015ed2b59ad944`  
		Last Modified: Wed, 24 Jun 2026 01:15:50 GMT  
		Size: 3.2 MB (3153036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e17277e5298e4ed3ba20b4728fcadea333bf37596c0db8b1bdfed0933c9131d9`  
		Last Modified: Wed, 24 Jun 2026 01:15:50 GMT  
		Size: 6.2 KB (6165 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm64 variant v8

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

### `debian:experimental` - unknown; unknown

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

### `debian:experimental` - linux; 386

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

### `debian:experimental` - unknown; unknown

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

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:1f40db0a107ca092a1ca302573d2657920910aa7b4cd1151ea5639df2a5f459c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54098205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:291f2f41a4f476a1efbe05a5ab46555c492692ef104c6c757fec22c0e296b342`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'unstable' '@1782172800'
# Wed, 24 Jun 2026 01:15:58 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:df0906e3cb637fbba0e983f5f83d8b95284187794c6fcd307923e2706e29c920`  
		Last Modified: Wed, 24 Jun 2026 00:31:03 GMT  
		Size: 54.1 MB (54097985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:366d211411541eda782599897680c0ebe8042b2a8de5229ab7954e38c1771584`  
		Last Modified: Wed, 24 Jun 2026 01:16:11 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:d1ce40afed78f29517ce7618d22e42daac38dd1679f6b08b3634634b891cdb15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3161302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0c778ec725c3f29c5212514b97c4d4cb50ef1ad616e56321d73ce0ae2f84d3e`

```dockerfile
```

-	Layers:
	-	`sha256:23ef88961c537bc392824d43b7bc35f4c267e216362a732155b31ddfac3e594f`  
		Last Modified: Wed, 24 Jun 2026 01:16:11 GMT  
		Size: 3.2 MB (3155169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc62e639c6b9fee6bbb0c010aefff4705a85d4f4b1878bec076d0ff36ebf903e`  
		Last Modified: Wed, 24 Jun 2026 01:16:11 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; riscv64

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

### `debian:experimental` - unknown; unknown

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

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:f539a87e5ffc3fd25afc355af5107ff0c5e1e52f85747d7fa71a7a85623f457e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48518024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b303e50f37a85910f6a7aac7930812b71a7a10dcfe10f8bdd0c6f3b82cb713c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'unstable' '@1782172800'
# Wed, 24 Jun 2026 01:14:34 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:9d0a24e2e28b0d2f4b1099d1d9891107922d94e2cbcd230e7347b8eb742a5558`  
		Last Modified: Wed, 24 Jun 2026 00:28:47 GMT  
		Size: 48.5 MB (48517803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8dee08a47f52be7aaad8537b68398f610b26059f07e2b557ffea6828f505387`  
		Last Modified: Wed, 24 Jun 2026 01:14:45 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:ef33f2b21c86fd08a97845ce9817e2228e558c037f3c08658297cc6ac2c515f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3159218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef41666184a38fdb2e32d72cc9ed513194bccf2e5c958c9a71edac0f48b3275b`

```dockerfile
```

-	Layers:
	-	`sha256:57d0e78c73af40bc94cd66e94900189a2b742e9e044fd63cebe73dd0c7dd6b10`  
		Last Modified: Wed, 24 Jun 2026 01:14:45 GMT  
		Size: 3.2 MB (3153117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53547ea1c95939b7fd211217f55bb3c2eddbb703593f5e981468ccfc18532382`  
		Last Modified: Wed, 24 Jun 2026 01:14:45 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json
